#Here is some code for an introduction to SQLite in R.
library(sqldf)
library(RSQLite)

#define the paths to the various files to be used
folder =  "/Users/oliverwillcox/Documents/Kaggle/Kaggle Avito Context Ad Click/"
file.sqlite = paste(folder, "database.sqlite", sep = "")

#open connections to the databases
db.sqlite = dbConnect(SQLite(), dbname=file.sqlite)
dbListTables(db.sqlite)

#get 1 record from AdsInfo
rs = dbSendQuery(db.sqlite, "SELECT * FROM AdsInfo")
recordAdsInfo = dbFetch(rs, 1)       # fetch one record
recordAdsInfo
dbGetInfo(rs)
dbClearResult(rs)
