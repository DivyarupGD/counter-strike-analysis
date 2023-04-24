# CS GO Analysis
<!-- TOC -->
* [CS GO Analysis](#cs-go-analysis)
    * [SQL](#sql)
    * [SQOOP](#sqoop)
<!-- TOC -->

Analysis of historical CounterStrike Global Offensive professional match data from HLTV using Sqoop, Hive and Hbase

![cs-banner](images/cs-banner.png)

I have used cloudera distribution for running the project
## SQL
Creation of Tables and Loading the dataset to RDBMS
- Open Terminal and enter as root user `mysql -u root -p`. The password is **cloudera**
- Mount a common directory so that files can be accessed between the virtual environment and local system.
- Run the sql script using the command `source /home/cloudera/Desktop/sharedDirectory/create_and_load_tables.sql`. The path to sql file in virtual local filesystem is to be used.
- All the select commands will return results if creation and loading is successful.

## SQOOP
Transferring data from RDBMS(MySQL) to HDFS. You can execute any of the following:
1. Open terminal and run the sqoop import commands individually for each table.
2. Run the sqoop import-all-tables command from [ingest-all-tables-at-once](sqoop/ingest-all-tables-at-once)

Once done, please ensure that the data is present in the warehouse directory using the following command
`hadoop fs -ls /user/cloudera/counterstrike` or whatever directory name has been used.



