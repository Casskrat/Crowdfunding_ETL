--Crowdfunding_db_schema
CREATE TABLE Categories (
    category_id  VARCHAR(100) PRIMARY KEY,
    category VARCHAR(100) NOT NULL
);
CREATE TABLE Subcategories(
	subcategory_id VARCHAR(100) PRIMARY KEY,
	subcategory VARCHAR(100)
	);
CREATE TABLE Contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);
CREATE TABLE Campaign (
    cf_id INT PRIMARY KEY,
	contact_id INT,
	company_name VARCHAR(100),
	description VARCHAR(100),
	goal VARCHAR(100),
	pledged VARCHAR(100),
	outcome VARCHAR(100),
	backers_count VARCHAR(100),
	country VARCHAR(100),
	currency VARCHAR(100),
	launched_date VARCHAR(100),
	end_date VARCHAR(100),
	category_id VARCHAR(100),
	subcategory_id VARCHAR(100),
    FOREIGN KEY (category_id) REFERENCES Categories(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES Subcategories(subcategory_id),
	FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id)

);

select * from Contacts;
select * from Categories;
select * from Subcategories;
select * from Campaign;

