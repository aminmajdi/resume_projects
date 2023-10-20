--This SQL script contains a series of queries designed to extract and analyze COVID-19 data from the 'portfolio_DB' database. 
--The queries cover various aspects of the data, including calculating death rates, vaccination rates, daily statistics,
--infection counts, and more. The script employs CTEs, temporary tables, and views to structure and visualize the data.
--These SQL queries are intended to provide insights into the COVID-19 pandemic's impact on different locations, populations, and time periods.)


SELECT location, date, total_cases,new_cases, total_deaths, new_deaths, population
From portfolio_DB..covid_death
where date = '2020-01-05 00:00:00.000'
order by 1,2


SELECT location, date, total_cases , total_deaths,(Cast(total_deaths as int))/(Cast(total_cases as float))*100 as death_to_case_rate , population
From portfolio_DB..covid_death
Where ((location like '%iran%') or (location like '%states%')) AND (date = '2023-10-12 00:00:00.000') 
order by 1,2;



SELECT location, date, total_cases , total_deaths,(Cast(total_deaths as int))/(Cast(total_cases as float))*100 as death_to_case_rate , population
From portfolio_DB..covid_death
Where ((location like '%iran%') or (location like '%states%')) AND (date = '2023-10-12 00:00:00.000') 
order by 1,2;



-- Death rate in total cases for different countries:

SELECT location, date, total_cases , total_deaths,(Cast(total_deaths as int))/(Cast(total_cases as float))*100 as death_to_case_rate , population
From portfolio_DB..covid_death
Where date = '2023-10-12 00:00:00.000' 
order by 5 DESC;


-- Death rate in population for different countries:

SELECT location, date, total_cases , total_deaths,(Cast(total_deaths as int))/(Cast(population as float))*100 as death_to_popu_rate , population
From portfolio_DB..covid_death
Where date = '2023-10-12 00:00:00.000' 
order by 5 DESC;

-- Herd immunity
-- the rate of infection in population for different countries:

SELECT location, date, total_cases , total_deaths,(Cast(total_cases as int))/(Cast(population as float))*100 as case_to_popu_rate , population
From portfolio_DB..covid_death
Where (date = '2023-10-12 00:00:00.000')  
order by 5 DESC;


-- Europe herd immunity
-- the rate of infection in population for different countries:

SELECT location, date, total_cases , total_deaths,(Cast(total_cases as int))/(Cast(population as float))*100 as case_to_popu_rate , population
From portfolio_DB..covid_death
Where (date = '2023-10-12 00:00:00.000') and (location like '%europ%') 
order by 5 DESC;



--Highet death count 

SELECT location, Max(Cast(total_deaths as int)) as death_count 
From portfolio_DB..covid_death
Group by location
order by 2 DESC;


--Highet death count for countries 

SELECT location, Max(Cast(total_deaths as int)) as death_count 
From portfolio_DB..covid_death
-- we just need to look at the countries not the aggregate continent numbers
Where continent is not null
Group by location
order by 2 DESC;


--Highest death count for continents 

SELECT location, Max(Cast(total_deaths as int)) as death_count 
From portfolio_DB..covid_death
-- we just need to look at the countries not the aggregate continent numbers
Where continent is null and location NOT IN ('World', 'Upper middle income', 'High income', 'Lower middle income', 'Low income' , 'European Union')
Group by location
order by 2 DESC;



--or
--- THERE ARE SOME ISSUES IN THIS QUERRY AS THE NUMBERS ARE NOT ACCURATE FOR NORTH AMERICA AND EUROPE
SELECT continent, MAX(Cast(total_deaths as int)) as death_count 
From portfolio_DB..covid_death
-- we just need to look at the countries not the aggregate continent numbers
Where continent is NOT null
Group by continent
order by death_count DESC;



--day to day global numbers

SELECT date,   SUM(Cast(new_cases as int)) as new_case_per_day , SUM(Cast(new_deaths as int)) as new_death_per_day 
From portfolio_DB..covid_death
-- we just need to look at the countries not the aggregate continent numbers
Where continent is NOT null and date > '2020-01-04 00:00:00.000'
Group by date
order by date ;


--day to day global numbers with daeth rate (new death per day over new case per day)

SELECT  date,  SUM(Cast(new_cases as int)) as total_cases , SUM(Cast(new_deaths as int)) as total_death  , SUM(Cast(new_deaths as float))/SUM(Cast(new_cases as int))*100 as death_rate
From portfolio_DB..covid_death
-- we just need to look at the countries not the aggregate continent numbers
Where continent is NOT null and date > '2020-01-20 00:00:00.000' and date < '2023-10-9 00:00:00.000'
Group by date
order by date ;



--Global death rate

SELECT  SUM(Cast(new_cases as int)) as total_cases , SUM(Cast(new_deaths as int)) as total_death  , SUM(Cast(new_deaths as float))/SUM(Cast(new_cases as int))*100 as death_rate
From portfolio_DB..covid_death
-- we just need to look at the countries not the aggregate continent numbers
Where continent is NOT null 


--join tables:

SELECT  *
From portfolio_DB..covid_death death
join portfolio_DB..covid_vaccinations vaccine
on death.location = vaccine.location
and death.date = vaccine.date
order by 3,4

--total vacination
SELECT  death.continent, death.location ,death.date, death.population , vaccine.total_tests
From portfolio_DB..covid_death death
join portfolio_DB..covid_vaccinations vaccine
on death.location = vaccine.location
and death.date = vaccine.date
--group by death.location
--order by 3,4



--total vacination
SELECT death.continent, death.location  , death.date , death.population , vaccine.new_vaccinations 
From portfolio_DB..covid_death death
join portfolio_DB..covid_vaccinations vaccine
on death.location = vaccine.location
and death.date = vaccine.date
where death.continent is not null and death.location like '%states%'
order by 1,2,3

--total vacination
SELECT death.location   , sum(cast(vaccine.new_vaccinations as float))/max(death.population) vaccination_rate
From portfolio_DB..covid_death death
join portfolio_DB..covid_vaccinations vaccine
on death.location = vaccine.location
and death.date = vaccine.date
where death.continent is not null and death.location like '%states%'
group by death.location
order by 1


-- total vacination by roling aggregation over countriesin north america

SELECT death.continent, death.location  , death.date , death.population , vaccine.new_vaccinations ,
Sum(convert(int ,vaccine.new_vaccinations)) over (partition by death.location order by  death.location , death.date) as rolling
From portfolio_DB..covid_death death
join portfolio_DB..covid_vaccinations vaccine
on death.location = vaccine.location
and death.date = vaccine.date
where death.continent = 'North America'
order by 2,3


-- total vacination by roling aggregation in north america

SELECT death.continent, death.location  , death.date , death.population , vaccine.new_vaccinations ,
Sum(convert(int ,vaccine.new_vaccinations)) over (partition by death.continent order by death.continent, death.location , death.date) as rolling
From portfolio_DB..covid_death death
join portfolio_DB..covid_vaccinations vaccine
on death.location = vaccine.location
and death.date = vaccine.date
where death.continent = 'North America'
order by 2,3




--CTE usecase:
--this querry shows how percentage of each contry is vaccinated in different dates

with popVsVac (continent, location  , date , population , new_vaccinations ,rolling) as (
SELECT death.continent, death.location  , death.date , death.population , vaccine.new_vaccinations ,
Sum(convert(float ,vaccine.new_vaccinations)) over (partition by death.location order by  death.location , death.date) as rolling
From portfolio_DB..covid_death death
join portfolio_DB..covid_vaccinations vaccine
on death.location = vaccine.location
and death.date = vaccine.date
where death.continent is not null
)
select * , (rolling/population)*100 as vacination_rate_over_country
From popVsVac
order by 2,3



-- table usecase:
DROP TABLE  IF EXISTS 
Create table #vacination_rate
(
continent nvarchar (255), 
location  nvarchar (255), 
date datetime, 
population numeric, 
new_vaccinations numeric,
rolling numeric
)
Insert into #vacination_rate
SELECT death.continent, death.location  , death.date , death.population , vaccine.new_vaccinations ,
Sum(convert(float ,vaccine.new_vaccinations)) over (partition by death.location order by  death.location , death.date) as rolling
From portfolio_DB..covid_death death
join portfolio_DB..covid_vaccinations vaccine
on death.location = vaccine.location
and death.date = vaccine.date
where death.continent is not null

select * , (rolling/population)*100 as vacination_rate_over_country
From #vacination_rate
order by 2,3

--create view for visualization

create view vacination_rate as
SELECT death.continent, death.location  , death.date , death.population , vaccine.new_vaccinations ,
Sum(convert(float ,vaccine.new_vaccinations)) over (partition by death.location order by  death.location , death.date) as rolling
From portfolio_DB..covid_death death
join portfolio_DB..covid_vaccinations vaccine
on death.location = vaccine.location
and death.date = vaccine.date
where death.continent is not null

select *
from vacination_rate





SELECT    SUM(Cast(new_cases as int)) as total_cases , SUM(Cast(new_deaths as int)) as total_death  , SUM(Cast(new_deaths as float))/SUM(Cast(new_cases as int))*100 as death_rate
From portfolio_DB..covid_death
-- we just need to look at the countries not the aggregate continent numbers
Where continent is NOT null and date > '2020-01-20 00:00:00.000' and date < '2023-10-9 00:00:00.000'
--Group by date
order by 1,2 ;



SELECT location, population , Max(total_cases) as highestInfectionCount , Max(Cast(total_cases as float)/(population))*100 as infection_in_population 
From portfolio_DB..covid_death
Group by location , population 
order by infection_in_population desc



SELECT location, population , total_cases as highestInfectionCount --, Max(Cast(total_cases as float)/(population))*100 as infection_in_population 
From portfolio_DB..covid_death
where location = 'Cyprus'
--Group by location , population 
order by date 


SELECT location, population ,MAX( Cast(total_cases as int)) as highestInfectionCount , Max(Cast(total_cases as float)/(population))*100 as infection_in_population 
From portfolio_DB..covid_death
--where location = 'Cyprus'
Group by location , population 
order by infection_in_population desc


SELECT location, population ,date ,MAX( Cast(total_cases as int)) as highestInfectionCount , Max(Cast(total_cases as float)/(population))*100 as infection_in_population 
From portfolio_DB..covid_death
where location = 'India'
Group by location , population , date
order by date 