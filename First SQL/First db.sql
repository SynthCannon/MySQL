CREATE DATABASE IF NOT EXISTS cinema_db;

DROP TABLE IF EXISTS accounts,movies;

CREATE TABLE accounts (
    My_id INT NOT NULL AUTO_INCREMENT,
    F_Name VARCHAR(255),
    L_Name VARCHAR(255),
    Age INT NOT NULL,
    UNIQUE (My_id)
);

CREATE TABLE movies (
    Movie_id INT NOT NULL AUTO_INCREMENT,
    Title VARCHAR(255),
    PRIMARY KEY (Movie_id),
    UNIQUE (Movie_id)
);

ALTER TABLE accounts ADD Middle_Name INT;

ALTER TABLE accounts MODIFY Middle_Name VARCHAR(200);

ALTER TABLE accounts CHANGE Middle_Name M_Name VARCHAR(255);

ALTER TABLE accounts DROP M_Name;

