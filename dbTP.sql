create database TP;
use TP;
create table member_test (
	id varchar(12) primary key,
    pw varchar(16) not null,
    nickname varchar(16),
    name varchar(16) not null,
    birth date not null,
    gender varchar(10) not null,
    cellnumber varchar(12) not null
);
alter table member add email varchar(30);

create table board_test (
	no int primary key auto_increment,
	title varchar(50) not null,
    pw varchar(6) not null,
    content varchar(1000),
    tag varchar(50)
);
insert into board_test ('title', 'pw', 'content') values ('title3', 1234, 'content4'); 