DROP DATABASE project;
CREATE DATABASE  project;
USE  project;



CREATE TABLE nurse (
nurse_id INT AUTO_INCREMENT NOT NULL,
nurse_name VARCHAR(255) NOT NULL,
gender VARCHAR(255) NOT NULL,
nsalary INT ,
nurse_password VARCHAR(255) NOT NULL,
PRIMARY KEY (nurse_id)
);

CREATE TABLE section (
section_id INT AUTO_INCREMENT NOT NULL,
section_name VARCHAR(255),
PRIMARY KEY (section_id)
);

CREATE TABLE shift (
shift_id INT AUTO_INCREMENT NOT NULL,
shift_start VARCHAR(255),
shift_end VARCHAR(255),
shift_type VARCHAR(255),
shift_day VARCHAR(255),
nurseId INT,
sectionId INT,
FOREIGN KEY (nurseId) REFERENCES nurse(nurse_id),
FOREIGN KEY (sectionId) REFERENCES section(section_id),
PRIMARY KEY (shift_id)
);





CREATE TABLE head_nurse (
head_id INT AUTO_INCREMENT NOT NULL,
head_name VARCHAR(255),
sectionId INT,
FOREIGN KEY (sectionId) REFERENCES section(section_id),
PRIMARY KEY (head_id)
);


CREATE TABLE request (
request_id INT AUTO_INCREMENT NOT NULL,
nurse_email VARCHAR(255) ,
nurse_phone INT,
request_change VARCHAR(255),
request_name VARCHAR(255),
headId INT,
FOREIGN KEY (headId) REFERENCES head_nurse(head_id),
PRIMARY KEY (request_id)
);

CREATE TABLE request_nurse(
    requestId INT,
    nurseId INT,
    FOREIGN KEY (requestId) REFERENCES request(request_id),
    FOREIGN KEY (nurseId) REFERENCES nurse(nurse_id)
);