-- Welcome to addressbook services database

-- UC1 Create addressbook services database 
create database AddressBookServicesDB;
use AddressBookServicesDB;
-- UC2-
CREATE TABLE  Customer(Customer_Id INT AUTO_INCREMENT PRIMARY KEY,
FirstName varchar(225), 
LastName varchar(225),
Address varchar(225),
City varchar(50),
State varchar(50),
Zip varchar (10),
PhoneNumber bigint (10),
Email varchar(50));
SELECT * FROM Customer;