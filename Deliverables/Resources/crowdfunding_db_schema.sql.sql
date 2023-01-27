--Creating table schematas

--Creating contacts table
CREATE TABLE contacts(
contact_id VARCHAR(5) PRIMARY KEY NOT NULL,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
email VARCHAR(50) NOT NULL);

--Creating category table
CREATE TABLE category(
category_id VARCHAR(9) PRIMARY KEY NOT NULL,
category VARCHAR(30) NOT NULL);

--Creating subcategory table
CREATE TABLE subcategory(
subcategory_id VARCHAR(9) PRIMARY KEY NOT NULL,
subcategory VARCHAR (30) NOT NULL);


--Creating campaign table
CREATE TABLE campaign(
cf_id VARCHAR(5) PRIMARY KEY NOT NULL,
contact_id VARCHAR(5) NOT NULL,
company_name VARCHAR(50) NOT NULL,
description VARCHAR(100) NOT NULL,
goal FLOAT8 NOT NULL,
pledged FLOAT8 NOT NULL,
outcome VARCHAR(11) NOT NULL,
backers_count VARCHAR(5) NOT NULL,
country VARCHAR(5) NOT NULL,
currency VARCHAR(5) NOT NULL,
launch_date DATE NOT NULL,
end_date DATE NOT NULL,
category_id VARCHAR(5) NOT NULL,
subcategory_id VARCHAR(9) NOT NULL,
FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
FOREIGN KEY (category_id) REFERENCES category(category_id),
FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id));

--SELECTING TABLE COLUMNS TO VERIFY DATA WAS PROPERLY IMPORTED
SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM campaign;

