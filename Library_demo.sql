/*create database library_de;*/
show databases;
use library_de;

/*CREATE TABLE readers
	(
    reader_id varchar(6),
    fname varchar(30),
    mname varchar(30),
    ltname varchar(30),
    city varchar(15),
    mobileno varchar(10),
    occupation varchar(10),
    dob date,
    constraint readers_pk primary key(reader_id)
    );*/
    
/*insert into readers values('00001','Ramesh','Chandra','Sharma','Delhi','9543198345','Service','1976-12-06');
insert into readers values('00002','Avinash','Sunder','Minha','Delhi','9876532109','Service','1974-10-17');
insert into readers values('00003','Rahul',null,'Rastogi','Delhi','9765178901','Student','1981-09-26');
insert into readers values('00004','Parul',null,'Gandhi','Delhi','9876578688','Housewife','1976-11-03');
insert into readers values('00005','Naveen','Chandra','Sharma','Mumbai','7867566980','Service','1976-09-19');
insert into readers values('00006','Dhriti',null,'Kesarwani','Delhi','8765432198','Student','1992-11-06');
insert into readers values('00007','Atishi',null,'Gupta','Mumbai','8769034567','Student','1981-09-06');
insert into readers values('00008','Kapil',null,'Dwivedi','Kurukshetra','4576780753','Service','1975-12-03');
insert into readers values('00009','Sunny',null,'Rajani','Delhi','8765987690','Service','1973-05-22');
insert into readers values('000010','Ankit','Kumar','Kesharwani','Delhi','8765797564','Service','1976-07-12');
*/
select * from readers;

/*CREATE TABLE Book
(
bid varchar(6),
bname varchar(40),
bdomain varchar(30),
constraint book_bid_pk primary key(bid)
);

INSERT INTO book VALUES('B00001','The Cat in the Hat','Story');
INSERT INTO book VALUES('B00002','Charlie and the Chocolate Factory','Story');
INSERT INTO book VALUES('B00003','The Very Hungry Caterpillar','Story');
*/
select * from Book;
/*
CREATE TABLE active_reader
(
account_id varchar(6),
reader_id varchar(6),
bid varchar(6),
atype varchar(10),
astatus varchar(10),
constraint activereader_accnumber_pk primary key(account_id),
constraint acc_readerid_fk foreign key(reader_id) references readers(reader_id),
constraint acc_bid_fk foreign key(bid) references Book(bid)
);
*/


INSERT INTO active_reader VALUES('A00001','00001','B00001','Premium','Active');
INSERT INTO active_reader VALUES('A00002','00002','B00002','Premium','Active');
INSERT INTO active_reader VALUES('A00003','00003','B00002','Premium','Active');
INSERT INTO active_reader VALUES('A00004','00002','B00003','Premium','Active');
INSERT INTO active_reader VALUES('A00005','00006','B00002','Premium','Active');
INSERT INTO active_reader VALUES('A00006','00007','B00001','Regular','Active');
INSERT INTO active_reader VALUES('A00007','00007','B00001','Premium','Suspended');
INSERT INTO active_reader VALUES('A00008','00001','B00003','Regular','Active');
INSERT INTO active_reader VALUES('A00009','00003','B00002','Premium','Terminated');
INSERT INTO active_reader VALUES('A00010','00004','B00002','Regular','Terminated');

select * from active_reader;

CREATE TABLE bookissue_details
(
issuenumber varchar(6),
account_id varchar(6),
bid varchar(6),
bookname varchar(50),
numbers_of_book_issued int(7),
constraint trandetails_tnumber_pk primary key(issuenumber),
constraint trandetails_acnumber_fk foreign key(account_id) references active_reader(account_id)
);

insert into bookissue_details values('T00001','A00001','B00001','The Cat in the Hat','1');
insert into bookissue_details values('T00002','A00001','B00002','Charlie and the Chocolate Factory','1');
insert into bookissue_details values('T00003','A00002','B00001','The Cat in the Hat','1');
insert into bookissue_details values('T00004','A00002','B00002','Charlie and the Chocolate Factory','1');
