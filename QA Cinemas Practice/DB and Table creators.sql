CREATE DATABASE IF NOT EXISTS cinema_workers_db;

USE cinema_workers_db;

DROP TABLE IF EXISTS employees, emergency_contacts, drones, management;

CREATE TABLE employees (
    Employee_ID INT NOT NULL,
    F_Name VARCHAR(255) NOT NULL,
    M_Name VARCHAR(255),
    L_Name VARCHAR(255) NOT NULL,
    DOB DATE NOT NULL,
    Gender CHAR(255),
    Home_Address VARCHAR(255),
    PRIMARY KEY (Employee_ID)
);

CREATE TABLE emergency_contacts (
    My_ID INT NOT NULL AUTO_INCREMENT,
    Employee_ID INT NOT NULL,
    F_Name VARCHAR(255) NOT NULL,
    M_Name VARCHAR(255),
    L_Name VARCHAR(255) NOT NULL,
    Relationship VARCHAR(255) NOT NULL,
    Contact_Num VARCHAR(255) NOT NULL,
    Contact_Email VARCHAR(255) NOT NULL,
    PRIMARY KEY (My_ID),
    FOREIGN KEY (My_ID)
        REFERENCES employees (Employee_ID)
        ON DELETE CASCADE
);

CREATE TABLE drones (
	My_ID INT NOT NULL AUTO_INCREMENT,
    Employee_ID INT NOT NULL,
    Positon VARCHAR(255) NOT NULL,
    Hourly_Pay FLOAT NOT NULL,
    FOREIGN KEY (My_ID)
        REFERENCES employees (Employee_ID)
        ON DELETE CASCADE
);

CREATE TABLE management (
    My_ID INT NULL NOT NULL AUTO_INCREMENT,
    Employee_ID INT NOT NULL,
    Positon VARCHAR(255) NOT NULL,
    Salary FLOAT NOT NULL,
    FOREIGN KEY (My_ID)
        REFERENCES employees (Employee_ID)
        ON DELETE CASCADE
);