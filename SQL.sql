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
	
	insert into QnA values('agree','홍길동','010-0000-0000','khr1287@naver.com','','','','테스트제목입니다1','테스트내용입니다2','');
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
insert into movie values(1,'Tree','3','4','5','6','7','8',9,'10',11,12,'13');
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
seats varchar2(1000)
);
insert into theater values('1T','A0,A1,A2,S3,A3,A4,A5,A6,A7,A8,S3,A9,A10,B0,B1,B2,S3,B3,B4,B5,B6,B7,B8,S3,B9,B10,C0,C1,C2,S3,C3,C4,C5,C6,C7,C8,S3,C9,C10,D0,D1,D2,S3,D3,D4,D5,D6,D7,D8,S3,D9,D10,E0,E1,E2,S3,E3,E4,E5,E6,E7,E8,S3,E9,E10,F0,F1,F2,S3,F3,F4,F5,F6,F7,F8,S3,F9,F10,G0,G1,G2,S3,G3,G4,G5,G6,G7,G8,S3,G9,G10,H0,H1,H2,S3,H3,H4,H5,H6,H7,H8,S3,H9,H10,I0,I1,I2,S3,I3,I4,I5,I6,I7,I8,S3,I9,I10');
insert into theater values('2T','A0,A1,A2,A3,B0,B1,B2,B3');
insert into theater values('3T','A0,A1,A2,A3,A4,A5,S3,A6,A7,A8,A9,A10,S3,A11,A12,A13,A14,A15,B0,S3,B2,B3,B4,B5,S3,B6,B7,B8,B9,B10,S3,B11,B12,B13,B14,S3,C0,S3,S3,C3,C4,C5,S3,C6,C7,C8,C9,C10,S3,C11,C12,C13,S3,S3,D0,S3,S3,S3,D4,D5,S3,D6,D7,D8,D9,D10,S3,D11,D12,S3,S3,S3,E0,S3,S3,S3,S3,E5,S3,E6,E7,E8,E9,E10,S3,E11,S3,S3,S3,S3,F0,S3,S3,S3,S3,S3,S3,F6,F7,F8,F9,F10,S3,S3,S3,S3,S3,S3,G0,S3,S3,S3,S3,S3,S3,G6,G7,G8,G9,G10,S3,S3,S3,S3,S3,S3,H0,S3,S3,S3,S3,S3,S3,H6,H7,H8,H9,H10,S3,S3,S3,S3,S3,S3,I0,S3,S3,S3,S3,S3,S3,I6,I7,I8,I9,I10,S3,S3,S3,S3,S3,S3');
insert into theater values('4T','A0,A1,	A2,	S3,	S3,	S3,	S3,	S3,B0,S3,B2,B3,S3,S3,S3,S3,C0,S3,S3,S3,C4,C5,S3,S3,D0,S3,S3,S3,S3,D5,D6,S3,E0,S3,S3,S3,S3,S3,E6,E7,F0,S3,S3,S3,S3,F5,F6,S3,G0,S3,S3,S3,G4,G5,S3,S3,H0,S3,S3,H3,H4,S3,S3,S3,I0,I1,I2,S3,S3,S3,S3,S3');
insert into theater values('4T','A0,A1,A2,S3,S3,S3,S3,S3,B0,S3,B2,B3,S3,S3,S3,S3,C0,S3,S3,C3,C4,S3,S3,S3,D0,S3,S3,S3,D4,D5,S3,S3,E0,S3,S3,S3,S3,E5,E6,S3,F0,S3,S3,S3,S3,S3,F6,F7,G0,S3,S3,S3,S3,G5,G6,S3,H0,S3,S3,S3,H4,H5,S3,S3,I0,S3,S3,I3,I4,S3,S3,S3,');

col playtime for a20;
col taken for a20;
set linesize 100;

create table resv(
movie varchar2(20),
tName varchar2(20),
playtime varchar2(100) primary key,
taken varchar2(1000),
FOREIGN KEY (tName) REFERENCES theater (name)
);

insert into resv values('Tree','1T','20190310021300','A3-A1-C1-C2-C3-C4');
insert into resv values('Tree','1T','20190311152000','B3');
insert into resv values('Tree','1T','20190312081000','B3');
insert into resv values('Tree','2T','20190313065000','B3');
insert into resv values('Harry','1T','20190310011000','B1');
insert into resv values('Harry','3T','20190312011000','A3-A1-C1-C2-C3-C4');
insert into resv values('콜드 워','1T','20190312023000','A3');
insert into resv values('가버나','1T','20190312021000','A3');
insert into resv values('일일시호일','3T','20190313021800','A3');
insert into resv values('쉰들러리스트','1T','20190313021000','A3');
insert into resv values('그린북','1T','20190316021000','A3');
insert into resv values('파이널리스트','1T','20190316021000','A3');
insert into resv values('이차크','1T','20190313031000','A3');
insert into resv values('테스크','1T','20190314041000','A3');
insert into resv values('이차크','3T','20190312011000','A3');
insert into resv values('이차크','4T','20190313011000','A3');


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


