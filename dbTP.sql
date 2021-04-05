create database TP;
use TP;
select * from member;
create table member (
	id varchar(12) primary key,
    pw varchar(16) not null,
    nickname varchar(16),
    name varchar(16) not null,
    birth date not null,
    gender varchar(10) not null,
    cellnumber varchar(12),
    email varchar(30)
);

create table board_test (
	no int primary key auto_increment,
	title varchar(50) not null,
    pw varchar(6) not null,
    content varchar(1000),
    view int default 0,
    `like` int default 0,
    user varchar(12),
    regdate date
);
insert into board_test (title, pw, content, user, regdate) values ('title1', 1234, 'content1', 'orange', curdate()); 
insert into board_test (title, pw, content, user, regdate) values ('title2', 1234, 'content2', 'orange', curdate()); 
insert into board_test (title, pw, content, user, regdate) values ('title3', 1234, 'content3', 'orange', curdate()); 
insert into board_test (title, pw, content, user, regdate) values ('title4', 1234, 'content4', 'orange', curdate()); 
insert into board_test (title, pw, content, user, regdate) values ('title5', 1234, 'content5', 'orange', curdate()); 