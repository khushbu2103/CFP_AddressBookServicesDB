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
insert into AddressbookTable(FirstName, LastName, Address, City, State, Zip, PhoneNumber, Email) values('khushi', 'soni', 'nandanvan', 'deesa', 'gujrat', 1234, 946097654, 'khushi@gmail.com '),
('twiney', 'soni', 'nandanvan', 'pali', 'rajasthan', 1234, 946097654, 'khushi@gmail.com '),
('thia', 'soni', 'thane', 'mumbai', 'maharastra', 12674, 946677654, '213@gmail.com '),
('raj', 'soni', 'ramnagar', 'palanpur', 'gujrat', 8774, 946677654, '213@gmail.com '),
( 'priya', 'gehlot', 'shivnagar', 'deesa', 'gujrat', 1234, 946097654, 'priya@gmail.com '),
('nitin', 'jain', 'shivnagar', 'deesa', 'gujrat', 1234, 946097654, 'nitin@gmail.com ');
SELECT * FROM AddressbookTable;

-- UC4 Edit contact using first name
UPDATE AddressBookTable
SET FirstName = 'ankit',
    LastName = 'jain',
    Address = 'rajatnagar',
    PhoneNumber = 9876543287,
    Email = 'ankit@gmail.com'
WHERE FirstName = 'twiney';

SET SQL_SAFE_UPDATES=0;
-- UC5 Delete contact using name
delete from AddressBookTable where FirstName = 'thia'; 

-- UC6 Retrieve contact by city or state
SELECT * FROM AddressbookTable where City = 'deesa';

-- UC7 find the size of table
SELECT City, State, COUNT(*) AS AddressBookSize
FROM AddressBookTable
GROUP BY City, State;

-- UC8 Retrieve entries sorted alphabetically by Person’s name for a given city 
SELECT FirstName, LastName, City
FROM AddressBookTable
WHERE City = 'deesa'
ORDER BY FirstName;

-- UC9 identify each Address Book with name and Type.
ALTER TABLE AddressBookTable
ADD COLUMN Type VARCHAR(50);
UPDATE AddressBookTable
SET Type = 'Family'
WHERE FirstName = 'khushi';
UPDATE AddressBookTable
SET Type = 'Family'
WHERE FirstName = 'raj';
UPDATE AddressBookTable
SET Type = 'Friends'
WHERE FirstName = 'nitin';
UPDATE AddressBookTable
SET Type = 'Profession'
WHERE FirstName = 'priya';
UPDATE AddressBookTable
SET Type = 'Friends'
WHERE FirstName = 'ankit';

-- UC10 get number of contact persons i.e. count by type
SELECT Type, COUNT(*) AS AddressBookSize
FROM AddressBookTable
GROUP BY Type;