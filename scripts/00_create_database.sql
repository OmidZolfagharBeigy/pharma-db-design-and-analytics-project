/*
===============================================================
Create "pharmaceutical_db" database
===============================================================
Script Purpose:
    This script creates a new database named 'pharmaceutical_db' after checking if it already exists. 
    If the database exists, it is dropped and recreated.

WARNING:
    Running this script will drop the entire 'pharmaceutical_db' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.

IMPORTANT:
    Execute the DROP DATABASE and CREATE DATABASE commands separately 
    to avoid execution errors in some GUI environments (e.g., pgAdmin).
===============================================================
*/

-- Drop database if exists
DROP DATABASE IF EXISTS pharmaceutical_db;

-- Create database
CREATE DATABASE pharmaceutical_db;
