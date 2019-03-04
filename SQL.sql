	1:1문의사항 테이블
	create table QnA (
		informationConsent varchar2(20),
		name varchar2(30),
		tel varchar2(30),
		email varchar2(30),
		areaSelectBox varchar2(30),
		selectMovieTheater varchar2(30),
		questionType varchar2(30),
		title varchar2(50),
		contents varchar2(3000),
		attachments varchar2(3000)
	);
	drop table QnA purge;



	공지사항 테이블
create table notice (
	title varchar2(30) not null,
	titleNo number(10) ,												
	movieTheaters varchar2(30) not null,
	uploadDate varchar2(30),
	contents varchar2(3000) not null
);

	oracle sequence (auto_increment 기능)

	CREATE SEQUENCE titleNo(
		INCREMENT BY 1,
		START WITH 1,
		MINVALUE 1,
		MAXVALUE 999999
	);
	
drop table serviceCenter purge;

	유저 테이블 생성
create table users (
	id varchar2(15) primary key,
	pw varchar2(100),
	name varchar2(10),
	birth varchar2(10),
	tel varchar2(15),
	mail varchar2(30),
	grade varchar2(3),
	gender varchar2(5)
);

	영화 테이블 생성
create table movie (
	code number primary key,
	title varchar2(50),
	ganre varchar2(20),
	playdate varchar2(20),
	runtime varchar2(10),
	summary varchar2(3000),
	director varchar2(20),
	actors varchar2(200),
	agerequire number,
	grade varchar2(5),
	count number,
	recommend number,
	photo varchar2(200)
);

===================유민재===================

	카트 테이블 생성
create table cart (
	cart_id NUMBER NOT NULL PRIMARY KEY,
	user_id VARCHAR2(50),
	code VARCHAR2(20) NOT NULL,
	amount NUMBER DEFAULT 0);

	외래키 설정
alter table cart add foreign key(code) references food(card);
alter table cart add foreign key(user_id) references users(id);	


===================양찬우===================
create table theater(
name varchar2(20) primary key,
seats varchar2(500)
);
insert into theater values('1T','A0,A1,A2,S3,A3,A4,A5,A6,A7,A8,S3,A9,A10,B0,B1,B2,S3,B3,B4,B5,B6,B7,B8,S3,B9,B10,C0,C1,C2,S3,C3,C4,C5,C6,C7,C8,S3,C9,C10,D0,D1,D2,S3,D3,D4,D5,D6,D7,D8,S3,D9,D10,E0,E1,E2,S3,E3,E4,E5,E6,E7,E8,S3,E9,E10,F0,F1,F2,S3,F3,F4,F5,F6,F7,F8,S3,F9,F10,G0,G1,G2,S3,G3,G4,G5,G6,G7,G8,S3,G9,G10,H0,H1,H2,S3,H3,H4,H5,H6,H7,H8,S3,H9,H10,I0,I1,I2,S3,I3,I4,I5,I6,I7,I8,S3,I9,I10');
insert into theater values('2T','A0,A1,A2,A3,B0,B1,B2,B3');

col playtime for a20;
col taken for a20;
set linesize 100;
//col seats for a20;

create table resv(
movie varchar2(20),
tName varchar2(20),
playtime varchar2(100) primary key,
taken varchar2(500),
FOREIGN KEY (tName) REFERENCES theater (name)
);

insert into resv values('Tree','1T','20190220021300','A3-A1-C1-C2-C3-C4');
insert into resv values('Tree','1T','20190221152000','B3');
insert into resv values('Tree','1T','20190222081000','B3');
insert into resv values('Tree','2T','20190222065000','B3');
insert into resv values('Harry','1T','20190222011000','B1');

select resv.movie, resv.tName, resv.playtime, resv.taken, theater.name, theater.seats
from resv join theater
on resv.tName = theater.name where playtime='20190221011000';


create table ticket(
id varchar2(15),
rTime varchar2(100),
seats varchar2(100),
money varchar2(100),
FOREIGN KEY (id) REFERENCES users (id),
FOREIGN KEY (rTime) REFERENCES resv (playtime)
);

create table users(
id varchar(15) primary key
);


