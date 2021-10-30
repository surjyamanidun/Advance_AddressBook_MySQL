#Address book Service
#uc1 
#create Addesss book service DB
create database address_book_service;
show databases;
use address_book_service;
#################################################################################################################################################
#uc2
#Ability to create a Address Book Table with first andlast names, address, city,state, zip, phone numberand email as its attributes.
CREATE TABLE address_book(
    firstName VARCHAR(30) NOT NULL,
    lastName VARCHAR(30) NOT NULL,
    address VARCHAR(50) NOT NULL,
    city VARCHAR(20) NOT NULL,
    state VARCHAR(20) NOT NULL,
    zip VARCHAR(10) NOT NULL,
    phoneNo VARCHAR(15) NOT NULL,
    email VARCHAR(15) NOT NULL,
    PRIMARY KEY (firstName)
);
##################################################################################################################################################uc3
#Ability to insert new Contacts to Address Book
#Query-:
insert  into address_book(firstName,lastname,address,city,state,zip,phoneNo,email) values
 ('Surjya','Duan','Bargarh','BBSR','Odisha','768045','7894142663','aaa@gmail.com'),
 ('sanket','abc','Gandhi Road','Anagar','Maharastra','414039','343929393','abc@gmail.com'),
 ('aachal','makode','sb road','amravati','Maharastra','311030','783929393','xyz@gmail.com'),
 ('aaa','bbb',' road','mumbai','Maharastra','321030','723929393','xyzw@gmail.com');
 #display Contacts in address_book table 
select * from address_book;
#################################################################################################################################################
#uc4
#Ability to edit existing contact person using their name
#query-:
UPDATE address_book 
SET 
    phoneNo = '9098765432'
WHERE
    firstName = 'surjya';
---------------------------------------------

UPDATE address_book 
SET 
    lastName = 'ccc'
WHERE
    firstName = 'aaa';
#################################################################################################################################################
#uc5
#Ability to delete person using FirstName
DELETE FROM `address_book` 
WHERE
    `firstName` = 'aaa';
#################################################################################################################################################
#UC6
#Ability to Retrieve Person belonging to a City or State from the Address Book
#query:-
#1)Retrive contact using city 
SELECT 
    *
FROM
    address_book
WHERE
    city = 'Odisha';
----------------------------------------
    #2)Retrive contact using city
SELECT 
    *
FROM
    address_book
WHERE
    city = 'Anagar';
------------------------------------------
    
	#3)Retrive contact using city
SELECT 
    *
FROM
    address_book
WHERE
    city = 'amravati';
--------------------------------------------
#4)Retrive contact using state
SELECT 
    *
FROM
    address_book
WHERE
    state = 'maharastra';
#################################################################################################################################################

#uc8
#Ability to retrieve entries sorted alphabetically by Person’s name for a given city
#Query-:
SELECT 
    firstName,city
FROM
    address_book
ORDER BY firstName;
#################################################################################################################################################
#uc9
#Ability to identify each Address Book with name andType.
alter table address_book add type varchar(30) after lastName;
update  address_book set type='family' where firstName ='ashish';
update  address_book set type='friend' where firstName ='aachal';
update  address_book set type='profession' where firstName ='sanket';
select * from address_book;
#################################################################################################################################################
#UC10
# COUNT(city) AS NumberOfaddress_book FROM address_book;
#query 
select count(type) AS NumberOfaddress_book FROM address_book;
#################################################################################################################################################
#uc11
#Ability to add person to both Friend and Family
update  address_book set type='family' where firstName ='ashish';
update  address_book set type='friend' where firstName ='ashish';
