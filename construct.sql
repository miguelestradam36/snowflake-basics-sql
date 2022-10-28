# ROLES MANAGEMENT
CREATE ROLE TRAINING_ROLE IF NOT EXISTS;
GRANT ROLE sysadmin TO ROLE TRAINING_ROLE;
GRANT ROLE accountadmin TO ROLE TRAINING_ROLE;
GRANT ROLE TRAINING_ROLE TO ROLE securityadmin;
USE ROLE TRAINING_ROLE;

# DATABASE AND SCHEMA CREATION
CREATE DATABASE TRAINING_DB IF NOT EXISTS;
CREATE SCHEMA TRAINING_DB.TRAINING_SC;
USE DATABASE TRAINING_DB;
USE SCHEMA TRAINING_DB.TRAINING_SC; 
CREATE OR REPLACE TABLE TRAINING_TB (
    id integer primary key,
    order_id integer unique
)
CREATE OR REPLACE TABLE ORDERS_TT (
    id integer primary key,
    name varchar(250),
    content varchar(250)
)