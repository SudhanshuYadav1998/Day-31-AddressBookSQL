--UC1 creating Addressbook_service databse--
create database AddressBook_Services

--UC2 creating AddressBook Table--
use AddressBook_Services
create table AddressBook
(
First_name varchar(50) not null,
Last_name varchar(20) not null,
Address varchar(150) not null,
city varchar(25) not null,
state varchar(15) not null,
zip int not null,
phone_number int not null,
email varchar(25)
)
