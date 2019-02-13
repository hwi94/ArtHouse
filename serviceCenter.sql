
		*	titleNo >> 나중에 primary key not null 들어가야함
		
		
	공지사항 테이블

		create table notice (
			title varchar2(30) not null,
			titleNo number(10) ,												
			movieTheaters varchar2(30) not null,
			uploadDate varchar2(30),
			contents varchar2(3000) not null
			);

	테이블삭제	
		drop table notice purge;
		
	테이블내용삭제
		delete from notice;

	조회
		select * from notice;
	인서트
		insert into notice values ('100',titleNo.nextval,'100','100','100');
		
		
		
		
		
);
	
