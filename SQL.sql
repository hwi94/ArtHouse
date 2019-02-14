
	공지사항 테이블
create table notice (
	title varchar2(30) not null,
	titleNo number(10) ,												
	movieTheaters varchar2(30) not null,
	uploadDate varchar2(30),
	contents varchar2(3000) not null
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
	code int primary key,
	title varchar2(50),
	ganre varchar2(20),
	playdate varchar2(20),
	runtime varchar2(10),
	summary varchar2(3000),
	director varchar2(20),
	actors varchar2(200),
	agerequire int,
	grade varchar2(5),
	count int,
	recommend int,
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

