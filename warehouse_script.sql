select * from SNOWFLAKE_SAMPLE_DATA.TPCH_SF10.CUSTOMER limit 100;  8 AM  -- 2 minutes --1 minute

select * from SNOWFLAKE_SAMPLE_DATA.TPCH_SF10.NATION limit 1000; -- 8.03 AM  -- 8.04 AM  -- 8.05 AM
-- added more code changes

ALTER WAREHOUSE REPORTING_WH RESUME   -- 8 AM
ALTER WAREHOUSE REPORTING_WH SUSPEND  -- 70 seconds   -- 70 seconds 

8 AM

1 minute  -- 8.01 

5 minutes  
ALTER WAREHOUSE REPORTING_WH SUSPEND 
6 minute

8.02 AM -- 2 minutes

show warehouses

-- select * from customer;

select * from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.CUSTOMER; 9 AM --9.01 AM  -- 100  -- 1000 7.33 

9 AM => 10 minutes=> 9.10 AM 30 seconds
9.12 AM => 

compute cost => based on how much time your VW is in running state

9.01 => 

use warehouse etl_wh;
use warehouse reporting_wh;
ETL_WH => AUTO SUSPEND 1 minute  -- 9.02 AM */

CREATE WAREHOUSE REPORTING_WH WITH WAREHOUSE_SIZE = 'XSMALL' WAREHOUSE_TYPE = 'STANDARD' AUTO_SUSPEND = 300 AUTO_RESUME = TRUE MIN_CLUSTER_COUNT = 1 MAX_CLUSTER_COUNT = 1 SCALING_POLICY = 'STANDARD';

ALTER WAREHOUSE ETL_WH SET AUTO_SUSPEND = 30;

ALTER  WAREHOUSE ETL_WH SET WAREHOUSE_SIZE = 'MEDIUM'

create warehouse DEFAULT_WH;

alter warehouse ETL_WH SUSPEND;

alter warehouse ETL_WH RESUME;


-- If we dont run any queries using ETL_WH Warehouse for 30 seconds it will go in suspended state
--As soon as you run any query again using the suspended warehouse it resume immediately if we set AUTO RESUME to true
/*If we resize the warehouse, old queries which are already running will still reuse the same warehouse 
for subsequent queries which are in queue will run with changed warehouse size*/

select * from SNOWFLAKE_SAMPLE_DATA.TPCH_SF100.CUSTOMER; -- XS - L -- in progress 
select * from "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF100"."ORDERS";   -- L  -- changed warehouse 
select * from "SNOWFLAKE_SAMPLE_DATA"."TPCDS_SF10TCL"."CALL_CENTER"; --L

-- made changes to code


-- daily 9 AM 
--compute power -- 100 users
9.02 - 200 queries -- waiting queue 

Max clusters=10
min clusters=1

2nd clusters  -- 200 
9.05 -- 250
3rd cluseter

9.07 -- 100

-- time travel practive ... 
create database TimeTravelPractise;
show databases;
ALTER DATABASE TimeTravelPractise set DATA_RETENTION_TIME_IN_DAYS=90;

show databases like '%TimeTravelPractise%';

use database timetravelpractise

show tables

select * from city

use database TimeTravelPractise;
CREATE TABLE City( CityID INT AUTOINCREMENT PRIMARY KEY,
 Name String(50), Zip String(10), StateCode String(2));
 
show tables

select * from City
select current_timestamp();  --2024-01-08 18:09:49.500 -0800

select sysdate() -- utc time

select * from City

INSERT INTO City(Name, Zip, StateCode) Values ('Sunnyvale', '94087', 'CA'),
('Cupertino', '95687', 'CA'),
('MountainView', '94017', 'CA'),
('Santa Clara', '95054', 'CA');

select * from City;    1 day

SELECT * FROM city AT(timestamp => '2024-01-08 18:09:49.500 -0800'::timestamp_tz);

INSERT INTO CITY
SELECT * FROM city AT(timestamp => '2024-01-08 18:16:59.929 -0800'::timestamp_tz) WHERE CITYID=1;

SELECT * FROM city AT(timestamp => '2024-01-08 18:20:39.987 -0800'::timestamp_tz);


drop table city; 8 AM  -- 1 day
 tomorrow -- 8 AM

undrop table city 


SELECT * FROM city


delete from city where cityid=1

select current_timestamp();  --2024-01-08 18:16:59.929 -0800  -- 4 rows

select current_timestamp();   -- 2024-01-08 18:20:39.987 -0800  -- 5 rows


show tables

1 day

INSERT INTO CITY 
SELECT * FROM city 
AT(timestamp => '2023-11-05 18:56:06.987 -0800'::timestamp_tz);

show tebles

select current_timestamp;   --2023-09-03 19:14:15.183 -0700

INSERT INTO City(Name, Zip, StateCode) Values ('Bozman', '28732', 'MA');

SELECT * FROM city 

SELECT * FROM city 
AT(timestamp => '2023-09-03 19:14:15.183 -0700'::timestamp_tz);

select current_timestamp;  --2023-09-03 19:15:59.327 -0700

delete from city where cityid=1

select * from city before(offset=> -60*60*24) --as 1 day

1 day

9 AM you dropped   tomorrow 9 AM => 

SELECT * FROM city 
AT(timestamp => '2023-09-03 19:15:59.327 -0700'::timestamp_tz);

SELECT * FROM city BEFORE(statement =>'01b02394-3200-ece1-0006-d15a0001d062')

select * from city before (statement =>'01b0290a-3200-ecf2-0006-d15a0001e02e') where cityid=1; 

select * from City;

DROP TABLE City;

UNDROP TABLE City;

--- added more table types code..

-- databases
USE ROLE SYSADMIN;

CREATE DATABASE our_first_database;

SHOW DATABASES LIKE 'our_first_database';  --retention_time is set to 1 by default

CREATE DATABASE production_database 
DATA_RETENTION_TIME_IN_DAYS = 15
COMMENT = 'Critical production database';

use DATABASE production_database 

CREATE TABLE TEST_TBL (NAME VARCHAR(100)) 

show tables

CREATE TABLE TEST_TBL2 (NAME VARCHAR(100)) DATA_RETENTION_TIME_IN_DAYS = 5



show tables;
ALTER TABLE TEST_TBL SET DATA_RETENTION_TIME_IN_DAYS = 90;


CREATE TABLE TEST_TBL2 (NAME VARCHAR(100));

use database our_first_database

CREATE TABLE TEST_FIRST_TBL (NAME VARCHAR(100))

Account => 1 day
DATABASE RETENTION TIME =15 days   -- 20 tables
SChema  RETENTION TIME =7 days
table RETENTION TIME =3 days   
