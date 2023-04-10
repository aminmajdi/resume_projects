# UML-robotics-project
Repository for the final project

### Using Git

1. Create your development branch.
   * Either locally in your terminal
     1. First, checkout the branch you wish to base your working branch off of.
        * `git checkout <origin_branch>`
     2. Create your branch
        * `git checkout -B branchName`  
   * Or on the GitHub repository page  
      1. In the `Code` tab, select the branch you wish to base your working branch off of.
      2. In the `Code` tab again, press the `Branch: currentBranch` drop down button.
      3. Enter a branch name in the text field.
      4. Click "Create branch: branchName from 'currentBranch'"
      5. On your dev machine, do `git fetch` followed by `git checkout branchName`

2. Develop and test

3. Stage your changes, commit them, and push to the remote repository.
  * Stage with
    * A single file, tracked or un-tracked: `git add fileName`
    * All modified, tracked files: `git add .`
      * Be careful with this command. It may add files you do not wish to commit. Run `git status` first to see the files that git has identified as new or changed. If there are files that you think should not be added, you can add them to the .gitignore file at the top level of the repository.
  * Commit:
    * `git commit -m "Some commit message"`
  * Push: 
    * `git push`
    * If you created locally, you will need ensure your branch is created upstream.
      `git push -u origin branchName`
      Later pushes will work with just `git push`

4. Create a Pull Request
  * It's generally good practice to merge into the branch (target branch) from which you created your dev branch. Additionally, to ensure your dev branch is up to date, you should first merge the target branch into your dev branch.
    1. Checkout the target branch.
    2. `git pull` to update 
    3. Checkout your dev branch.
    4. Merge target branch into your dev branch.
      `git merge targetBranch --no-ff --no-commit`
          * `--no-ff` and `--no-commit` ensures that the merge is not fast-forwarded nor automatically committed.
       * Resolve conflicts, if any. Stage and commit changes.
         `git commit` We can omit a commit message and use the default merge message. Simply writequit the editor that opens.
         * If you have any conflicts and aren't sure how to resolve, message Chris for a zoom meeting to be walked through the process.
    5. Push : `git push`
    6. On GitHub, navigate to your branch and click the button to create a pull request. Once approved, repeat steps `i` through `v` if the target branch has had commits made to it while your pull request was being reviewed. 
