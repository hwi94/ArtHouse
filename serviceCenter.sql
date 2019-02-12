
	공지사항 테이블
create table serviceCenter (
	title varchar2(30) not null,
	titleNo number(10) primary key not null ,
	place varchar2(30) not null,
	uploadDate varchar2(30),
	content varchar2(1000) not null
	);
	
drop table serviceCenter purge;
	
