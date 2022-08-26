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

--UC3 Inserting new contacts in AddressBook Table--
insert into AddressBook(First_name,Last_name,Address,city,state,zip,phone_number,email)
values
('sudhanshu','yadav','pitampura','delhi','new delhi',110008,727272,'xyz@abc.com'),
('anshul','singh','patel nagar','delhi','new delhi',110003,7272656,'xyz123@abcasd.com'),
('himanshu','mishra','ganga vihar','lucknow','up',221331,787878,'himan@abc.com')
