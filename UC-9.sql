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

--UC4 Ability to edit using name--
update AddressBook set First_name='sunil',Last_name='sharma',Address='golghar',city='gorakhpur',state='up',zip=211009,phone_number=876567,email='siuna@gamsj.com'
where First_name='anshul'

--UC5 ability to delete a person using person name--
delete from AddressBook where First_name='himanshu'

--UC6 ability to retrieve person belonging to city/state--
select*from AddressBook where First_name='sudhanshu'

--UC7 size of addressbook by city--
select count(city)
from AddressBook
where city='delhi'

--UC8 entries sorted alphabatically by name--
select*from AddressBook order by First_name 

--UC9 search by name or type--
alter table addressbook add type varchar(15)

insert into AddressBook(First_name,Last_name,Address,city,state,zip,phone_number,email)
values
('abhay','pandey','saket','ayodhya','up',223433,8926723,'jshf@abc.com'),
('kartik','singh','alambag','lucknow','up',110897,7273342,'anhs123@abcasd.com'),
('vinay','mishra','gomtinagar','lucknow','up',221331,787878,'vnay@abc.com')
update addressbook set type ='friend' where First_name='sudhanshu'
update addressbook set type ='friend' where First_name='vinay'
update addressbook set type ='family' where First_name='sunil'
update addressbook set type ='family' where First_name='abhay'
update addressbook set type ='colleague' where First_name='kartik'
