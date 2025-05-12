-- CREATING THE DATABASE
CREATE DATABASE clinicbookingsystem ;

-- USING THE CREATED DATABASE

USE clinicbookingsystem ;

-- CREATING THE TABLES
-- PATIENTS TABLE

CREATE TABLE patients (
 patient_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
 first_name VARCHAR(50) NOT NULL,
 last_name VARCHAR(50) NOT NULL ,
 date_of_birth DATE ,
 gender VARCHAR(50) NOT NULL ,
 phone INT NOT NULL ,
 email VARCHAR(50) NOT NULL ,
 address VARCHAR(50) NOT NULL 
 ) ;


 -- ROOMS TABLE
CREATE TABLE rooms(
room_id INT PRIMARY KEY  AUTO_INCREMENT NOT NULL ,
name VARCHAR(50) NOT NULL ,
 capacity INT
) ;

-- DOCTORS TABLE

CREATE TABLE doctors(
 doctor_id int PRIMARY KEY AUTO_INCREMENT NOT NULL ,
 first_name VARCHAR(50) NOT NULL ,
 last_name VARCHAR(50) NOT NULL ,
 specialty VARCHAR(50) NOT NULL ,
 phone INT NOT NULL ,
 email VARCHAR(50) NOT NULL ,
 room_id INT 
) ;

-- SERVICES TABLE
 CREATE TABLE services (
service_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL ,
service_name VARCHAR(50) NOT NULL ,
description VARCHAR(50) NOT NULL ,
service_type VARCHAR(50) NOT NULL ,
price decimal(5, 2)
) ;

-- PAYMENTS TABLE
CREATE TABLE payments (
payment_id INT PRIMARY KEY AUTO_INCREMENT ,
appointment_id INT ,
amount decimal(5, 2) ,
payment_method VARCHAR(20) ,
payment_status VARCHAR(20) ,
paid_at DATETIME
) ;

-- APPOINTMENTS TABLE
 CREATE TABLE appointments(
appointment_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL ,
patient_id INT ,
doctor_id INT ,
service_id INT ,
room_id INT ,
appointment_datetime DATETIME ,
appointment_status VARCHAR(50) NOT NULL ,
payment_id VARCHAR(20) ,
notes VARCHAR(100) NOT NULL ,
FOREIGN KEY(patient_id) REFERENCES patients(patient_id),
FOREIGN KEY(doctor_id) REFERENCES doctors(doctor_id),
FOREIGN KEY(service_id) REFERENCES services(service_id),
FOREIGN KEY(room_id) REFERENCES rooms(room_id)
) ;