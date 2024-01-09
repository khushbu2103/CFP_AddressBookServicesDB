-- Welcome to addressbook services database

-- UC1 Create addressbook services database 
create database AddressBookServicesDB;
use AddressBookServicesDB;

-- UC2 create addressbook table
CREATE TABLE  AddressbookTable(Customer_Id INT AUTO_INCREMENT PRIMARY KEY,
FirstName varchar(225), 
LastName varchar(225),
Address varchar(225),
City varchar(50),
State varchar(50),
Zip varchar (10),
PhoneNumber bigint (10),
Email varchar(50));
SELECT * FROM AddressbookTable;

-- UC3 Insert new contact in addressbook table  
insert into AddressbookTable values(1, 'khushi', 'soni', 'nandanvan', 'deesa', 'gujrat', 1234, 946097654, 'khushi@gmail.com ');
insert into AddressbookTable values(2, 'twiney', 'soni', 'nandanvan', 'pali', 'rajasthan', 1234, 946097654, 'khushi@gmail.com ');
insert into AddressbookTable values(3, 'thia', 'soni', 'thane', 'mumbai', 'maharastra', 12674, 946677654, '213@gmail.com ');
insert into AddressbookTable values(last_insert_id(), 'raj', 'soni', 'ramnagar', 'palanpur', 'gujrat', 8774, 946677654, '213@gmail.com ');
SELECT * FROM AddressbookTable;

-- UC4 Edit contact using first name
UPDATE AddressBookTable
SET FirstName = 'ankit',
    LastName = 'jain',
    Address = 'rajatnagar',
    PhoneNumber = 9876543287,
    Email = 'ankit@gmail.com'
WHERE FirstName = 'twiney' AND Customer_Id = 2;

-- UC5 Delete contact using name
delete from AddressBookTable where FirstName = 'thia' AND Customer_Id = 3; 

-- UC6 Retrieve contact by city or state
SELECT * FROM AddressbookTable where City = 'deesa';