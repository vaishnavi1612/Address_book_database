-- welcome to Address Book System
-- UC1
use address_book_system;
-- UC2
create table AddressBook(
firstName varchar(20),
lastName varchar(20),
address varchar(20),
city varchar(20),
state varchar(20),
zip int(10),
phoneNumber int(10)
);

-- UC3 INSERT DATA INTO table
insert into AddressBook values("Vaishnavi","Chauhan","Kopar Khairane", "Navi Mumbai","Maharastra", 467001, 626633869, "vaishnavichauhan1698@gmail.com");
insert into AddressBook values("Kavya","Tiwari","Ghansoli", "Navi Mumbai","Maharastra", 467001, 698959898, "kavya1698@gmail.com");
insert into AddressBook values("Sidharth","Rajput","Kopar Khairane", "Navi Mumbai","Maharastra", 467001, 676876676, "chauhan1698@gmail.com");
-- UC4  edit table data
SET SQL_SAFE_UPDATES=0;
select * from AddressBook;
update AddressBook
set zip = 462022 where firstName ="Vaishnavi";
-- UC5 DELETE A TABLE DATA USING NAME
delete from AddressBook where firstName = "Sidharth";
select * from AddressBook;

-- UC6 get the data from using city or state name
select firstName from AddressBook  where city ="Navi Mumbai";
select * from AddressBook;
-- UC7 
select count(*) from AddressBook where city ="Navi Mumbai";
select count(*) from AddressBook where state ="Maharastra";
-- UC8N
select * from AddressBook order by city desc;
select * from AddressBook order by firstName desc;
-- UC9 ADD NEW COLUMN IN TABLE
alter table AddressBook add ContactType varchar(20);
insert into AddressBook (ContactType) values("Friend");
select * from AddressBook;
update AddressBook
set ContactType = "Family" where firstName ="Vaishnavi";
select * from AddressBook;
update AddressBook
set ContactType = "Friend" where firstName ="Kavya";

delete from AddressBook where ContactType ="Friend";
select * from AddressBook;

insert into AddressBook values("Kavya","Tiwari","Ghansoli", "Navi Mumbai","Maharastra", 467001, 698959898, "kavya1698@gmail.com","Friend");
insert into AddressBook values("Sidharth","Rajput","Kopar Khairane", "Navi Mumbai","Maharastra", 467001, 676876676, "chauhan1698@gmail.com","Family");
 -- UC10 GET DATA USING CONTACT TYPE
 select phoneNumber from AddressBook where ContactType ="family";
  select phoneNumber from AddressBook where ContactType ="friend";
 
-- UC11 


insert into AddressBook values("Kavya","Tiwari","Ghansoli", "Navi Mumbai","Maharastra", 467001, 698959898, "kavya1698@gmail.com","Family");


