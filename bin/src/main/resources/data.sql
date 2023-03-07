insert into applicationtypes values (1,'Verification Of LV Systems (IEC 60364-6)');
insert into applicationtypes values (2,'Verification of HV system (up to 33 kV) (IEC 61936-1)');
insert into applicationtypes values (3,'Lightning protection conformity assessment, risk assessment, inspection and maintenance (IEC 62305-3 & 4)');
insert into applicationtypes values (4,'EMC assessment of an installation (IEC 61000-5-1)');
insert into applicationtypes values (5,'Failure analysis of electronic systems');
insert into applicationtypes values (6,'Conformity and project analysis');

create table users 
(user_id integer not null, 
user_active boolean,
creation_date datetime,
email varchar(255),
first_name varchar(255),
last_name varchar(255),
password varchar(255),
user_role varchar(255),
user_exist boolean,
user_name varchar(255),
user_type varchar(255),
updated_date datetime,
primary key (user_id));

create table applicationtypes(id integer not null, application varchar(255), primary key(id))

 CREATE TABLE COMPANY_TABLE (
    COMPANY_ID INT AUTO_INCREMENT PRIMARY KEY,
    USER_NAME VARCHAR(255),
    CLIENT_NAME VARCHAR(255),
	IN_ACTIVE boolean,
    CREATED_BY VARCHAR(255),
    UPDATED_BY VARCHAR(255),
    CREATED_DATE datetime,    
    UPDATED_DATE datetime 
     
);
CREATE TABLE DEPARTMENT_TABLE (
    DEPARTMENT_ID INT AUTO_INCREMENT PRIMARY KEY,
    COMPANY_ID INT,
	USER_NAME VARCHAR(255),
	CLIENT_NAME VARCHAR(255),
	DEPARTMENT_NAME VARCHAR(255),
	CREATED_BY VARCHAR(255),
    UPDATED_BY VARCHAR(255),
    CREATED_DATE datetime,    
    UPDATED_DATE datetime,
    FOREIGN KEY (COMPANY_ID) REFERENCES COMPANY_TABLE(COMPANY_ID) 
);

CREATE TABLE SITE_TABLE (
    SITE_ID INT AUTO_INCREMENT PRIMARY KEY,
	DEPARTMENT_ID INT,
	USER_NAME VARCHAR(255),
	CLIENT_NAME VARCHAR(255),
	DEPARTMENT_NAME VARCHAR(255),
	SITE VARCHAR(255),
	PERSON_INCHARGE VARCHAR(255),
	E_MAIL VARCHAR(255),
	ADDRESSLINE_1 VARCHAR(255),
	ADDRESSLINE_2 VARCHAR(255),
	LAND_MARK VARCHAR(255),
	CITY VARCHAR(255),
	STATE VARCHAR(255),
	COUNTRY VARCHAR(255),
	ZIP_CODE VARCHAR(255),
	PHONE_NUMBER VARCHAR(255),
	CREATED_BY VARCHAR(255),
    UPDATED_BY VARCHAR(255),
    CREATED_DATE datetime,    
    UPDATED_DATE datetime,	
    FOREIGN KEY (DEPARTMENT_ID) REFERENCES DEPARTMENT_TABLE(DEPARTMENT_ID) ON DELETE CASCADE
);


