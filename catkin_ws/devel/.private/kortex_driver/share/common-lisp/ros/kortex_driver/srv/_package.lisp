(cl:defpackage kortex_driver-srv
  (:use )
  (:export
   "CONTROLCONFIG_GETCONTROLMODE"
   "<CONTROLCONFIG_GETCONTROLMODE-REQUEST>"
   "CONTROLCONFIG_GETCONTROLMODE-REQUEST"
   "<CONTROLCONFIG_GETCONTROLMODE-RESPONSE>"
   "CONTROLCONFIG_GETCONTROLMODE-RESPONSE"
   "CONTROLCONFIG_UNSUBSCRIBE"
   "<CONTROLCONFIG_UNSUBSCRIBE-REQUEST>"
   "CONTROLCONFIG_UNSUBSCRIBE-REQUEST"
   "<CONTROLCONFIG_UNSUBSCRIBE-RESPONSE>"
   "CONTROLCONFIG_UNSUBSCRIBE-RESPONSE"
   "GETALLKINEMATICSOFTLIMITS"
   "<GETALLKINEMATICSOFTLIMITS-REQUEST>"
   "GETALLKINEMATICSOFTLIMITS-REQUEST"
   "<GETALLKINEMATICSOFTLIMITS-RESPONSE>"
   "GETALLKINEMATICSOFTLIMITS-RESPONSE"
   "GETCARTESIANREFERENCEFRAME"
   "<GETCARTESIANREFERENCEFRAME-REQUEST>"
   "GETCARTESIANREFERENCEFRAME-REQUEST"
   "<GETCARTESIANREFERENCEFRAME-RESPONSE>"
   "GETCARTESIANREFERENCEFRAME-RESPONSE"
   "GETDESIREDSPEEDS"
   "<GETDESIREDSPEEDS-REQUEST>"
   "GETDESIREDSPEEDS-REQUEST"
   "<GETDESIREDSPEEDS-RESPONSE>"
   "GETDESIREDSPEEDS-RESPONSE"
   "GETGRAVITYVECTOR"
   "<GETGRAVITYVECTOR-REQUEST>"
   "GETGRAVITYVECTOR-REQUEST"
   "<GETGRAVITYVECTOR-RESPONSE>"
   "GETGRAVITYVECTOR-RESPONSE"
   "GETKINEMATICHARDLIMITS"
   "<GETKINEMATICHARDLIMITS-REQUEST>"
   "GETKINEMATICHARDLIMITS-REQUEST"
   "<GETKINEMATICHARDLIMITS-RESPONSE>"
   "GETKINEMATICHARDLIMITS-RESPONSE"
   "GETKINEMATICSOFTLIMITS"
   "<GETKINEMATICSOFTLIMITS-REQUEST>"
   "GETKINEMATICSOFTLIMITS-REQUEST"
   "<GETKINEMATICSOFTLIMITS-RESPONSE>"
   "GETKINEMATICSOFTLIMITS-RESPONSE"
   "GETPAYLOADINFORMATION"
   "<GETPAYLOADINFORMATION-REQUEST>"
   "GETPAYLOADINFORMATION-REQUEST"
   "<GETPAYLOADINFORMATION-RESPONSE>"
   "GETPAYLOADINFORMATION-RESPONSE"
   "GETTOOLCONFIGURATION"
   "<GETTOOLCONFIGURATION-REQUEST>"
   "GETTOOLCONFIGURATION-REQUEST"
   "<GETTOOLCONFIGURATION-RESPONSE>"
   "GETTOOLCONFIGURATION-RESPONSE"
   "ONNOTIFICATIONCONTROLCONFIGURATIONTOPIC"
   "<ONNOTIFICATIONCONTROLCONFIGURATIONTOPIC-REQUEST>"
   "ONNOTIFICATIONCONTROLCONFIGURATIONTOPIC-REQUEST"
   "<ONNOTIFICATIONCONTROLCONFIGURATIONTOPIC-RESPONSE>"
   "ONNOTIFICATIONCONTROLCONFIGURATIONTOPIC-RESPONSE"
   "RESETGRAVITYVECTOR"
   "<RESETGRAVITYVECTOR-REQUEST>"
   "RESETGRAVITYVECTOR-REQUEST"
   "<RESETGRAVITYVECTOR-RESPONSE>"
   "RESETGRAVITYVECTOR-RESPONSE"
   "RESETJOINTACCELERATIONSOFTLIMITS"
   "<RESETJOINTACCELERATIONSOFTLIMITS-REQUEST>"
   "RESETJOINTACCELERATIONSOFTLIMITS-REQUEST"
   "<RESETJOINTACCELERATIONSOFTLIMITS-RESPONSE>"
   "RESETJOINTACCELERATIONSOFTLIMITS-RESPONSE"
   "RESETJOINTSPEEDSOFTLIMITS"
   "<RESETJOINTSPEEDSOFTLIMITS-REQUEST>"
   "RESETJOINTSPEEDSOFTLIMITS-REQUEST"
   "<RESETJOINTSPEEDSOFTLIMITS-RESPONSE>"
   "RESETJOINTSPEEDSOFTLIMITS-RESPONSE"
   "RESETPAYLOADINFORMATION"
   "<RESETPAYLOADINFORMATION-REQUEST>"
   "RESETPAYLOADINFORMATION-REQUEST"
   "<RESETPAYLOADINFORMATION-RESPONSE>"
   "RESETPAYLOADINFORMATION-RESPONSE"
   "RESETTOOLCONFIGURATION"
   "<RESETTOOLCONFIGURATION-REQUEST>"
   "RESETTOOLCONFIGURATION-REQUEST"
   "<RESETTOOLCONFIGURATION-RESPONSE>"
   "RESETTOOLCONFIGURATION-RESPONSE"
   "RESETTWISTANGULARSOFTLIMIT"
   "<RESETTWISTANGULARSOFTLIMIT-REQUEST>"
   "RESETTWISTANGULARSOFTLIMIT-REQUEST"
   "<RESETTWISTANGULARSOFTLIMIT-RESPONSE>"
   "RESETTWISTANGULARSOFTLIMIT-RESPONSE"
   "RESETTWISTLINEARSOFTLIMIT"
   "<RESETTWISTLINEARSOFTLIMIT-REQUEST>"
   "RESETTWISTLINEARSOFTLIMIT-REQUEST"
   "<RESETTWISTLINEARSOFTLIMIT-RESPONSE>"
   "RESETTWISTLINEARSOFTLIMIT-RESPONSE"
   "SETCARTESIANREFERENCEFRAME"
   "<SETCARTESIANREFERENCEFRAME-REQUEST>"
   "SETCARTESIANREFERENCEFRAME-REQUEST"
   "<SETCARTESIANREFERENCEFRAME-RESPONSE>"
   "SETCARTESIANREFERENCEFRAME-RESPONSE"
   "SETDESIREDANGULARTWIST"
   "<SETDESIREDANGULARTWIST-REQUEST>"
   "SETDESIREDANGULARTWIST-REQUEST"
   "<SETDESIREDANGULARTWIST-RESPONSE>"
   "SETDESIREDANGULARTWIST-RESPONSE"
   "SETDESIREDJOINTSPEEDS"
   "<SETDESIREDJOINTSPEEDS-REQUEST>"
   "SETDESIREDJOINTSPEEDS-REQUEST"
   "<SETDESIREDJOINTSPEEDS-RESPONSE>"
   "SETDESIREDJOINTSPEEDS-RESPONSE"
   "SETDESIREDLINEARTWIST"
   "<SETDESIREDLINEARTWIST-REQUEST>"
   "SETDESIREDLINEARTWIST-REQUEST"
   "<SETDESIREDLINEARTWIST-RESPONSE>"
   "SETDESIREDLINEARTWIST-RESPONSE"
   "SETGRAVITYVECTOR"
   "<SETGRAVITYVECTOR-REQUEST>"
   "SETGRAVITYVECTOR-REQUEST"
   "<SETGRAVITYVECTOR-RESPONSE>"
   "SETGRAVITYVECTOR-RESPONSE"
   "SETJOINTACCELERATIONSOFTLIMITS"
   "<SETJOINTACCELERATIONSOFTLIMITS-REQUEST>"
   "SETJOINTACCELERATIONSOFTLIMITS-REQUEST"
   "<SETJOINTACCELERATIONSOFTLIMITS-RESPONSE>"
   "SETJOINTACCELERATIONSOFTLIMITS-RESPONSE"
   "SETJOINTSPEEDSOFTLIMITS"
   "<SETJOINTSPEEDSOFTLIMITS-REQUEST>"
   "SETJOINTSPEEDSOFTLIMITS-REQUEST"
   "<SETJOINTSPEEDSOFTLIMITS-RESPONSE>"
   "SETJOINTSPEEDSOFTLIMITS-RESPONSE"
   "SETPAYLOADINFORMATION"
   "<SETPAYLOADINFORMATION-REQUEST>"
   "SETPAYLOADINFORMATION-REQUEST"
   "<SETPAYLOADINFORMATION-RESPONSE>"
   "SETPAYLOADINFORMATION-RESPONSE"
   "SETTOOLCONFIGURATION"
   "<SETTOOLCONFIGURATION-REQUEST>"
   "SETTOOLCONFIGURATION-REQUEST"
   "<SETTOOLCONFIGURATION-RESPONSE>"
   "SETTOOLCONFIGURATION-RESPONSE"
   "SETTWISTANGULARSOFTLIMIT"
   "<SETTWISTANGULARSOFTLIMIT-REQUEST>"
   "SETTWISTANGULARSOFTLIMIT-REQUEST"
   "<SETTWISTANGULARSOFTLIMIT-RESPONSE>"
   "SETTWISTANGULARSOFTLIMIT-RESPONSE"
   "SETTWISTLINEARSOFTLIMIT"
   "<SETTWISTLINEARSOFTLIMIT-REQUEST>"
   "SETTWISTLINEARSOFTLIMIT-REQUEST"
   "<SETTWISTLINEARSOFTLIMIT-RESPONSE>"
   "SETTWISTLINEARSOFTLIMIT-RESPONSE"
  ))
