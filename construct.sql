/* 
Creating role and assign to worksheet / session
 */
USE ROLE SECURITYADMIN;
CREATE ROLE TRAINING_ROLE;
/*CREATE ROLE TRAINING_ROLE IF NOT EXISTS;*/
GRANT ROLE sysadmin TO ROLE TRAINING_ROLE;
GRANT ROLE TRAINING_ROLE TO ROLE securityadmin;
USE ROLE TRAINING_ROLE;
/* 
Create Database and schema under the previously created role
 */
CREATE DATABASE TRAINING_DB;
CREATE SCHEMA TRAINING_DB.TRAINING_SC;
USE DATABASE TRAINING_DB;
USE SCHEMA TRAINING_DB.TRAINING_SC; 
/* 
Create tables under the following database and schema previously created
----
 */
 /* 
Training table
 */
CREATE OR REPLACE TABLE TRAINING_TB (
    id number autoincrement start 1 increment 1,
    order_id number
);
/* 
Orders table
 */
CREATE OR REPLACE TABLE ORDERS_TT (
    id number autoincrement start 1 increment 1,
    name varchar(250),
    content varchar(250)
);
/* 
Adding primary keys to tables
 */
ALTER TABLE TRAINING_DB.TRAINING_SC.TRAINING_TB ADD PRIMARY KEY (id);
ALTER TABLE TRAINING_DB.TRAINING_SC.ORDERS_TT ADD PRIMARY KEY (id);
/* 
Granting access to other roles to the database, for security or maintenance purposes.
 */
grant select on  all tables in database TRAINING_DB to role sysadmin;
grant insert,delete on all tables in schema TRAINING_DB.TRAINING_SC to role sysadmin;