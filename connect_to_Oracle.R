# building block script

# connects to AFSC Oracle database

## uses window prompts for user ID (uid) and password (pwd)
#_______________________________________________________________
library(RODBC)

channel <- odbcConnect(dsn = "AFSC", 
       uid = rstudioapi::showPrompt(title = "Username", 
                                    message = "Oracle Username", default = ""), 
       pwd = rstudioapi::askForPassword("enter password"),
       believeNRows = FALSE)

## checks to see if connection has been established
odbcGetInfo(channel)

