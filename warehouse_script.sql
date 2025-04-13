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
