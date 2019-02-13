		
		영화테이블
		
		create table movie (		코드 / 제목 / 장르 / 개봉일 /  상영시간 / 줄거리 / 감독 / 배우 / 연령제한 / 평점 / 관객수 / 추천수 / 포스터   +@  토탈점수 , 별점 준 관객수.
		   code number(10) primary key not null,
		   title varchar2(50) not null,		
		   ganre varchar2(20)	not null,	
		   playdate varchar2(20) not null,
		   runtime varchar2(10) not null,
		   summary varchar2(3000) not null,
		   director varchar2(20) not null,
		   actors varchar2(200) not null,
		   agerequire number(10) not null, 
		   grade varchar2(5),		
		   count number(10),			
		   recommend number(20),		
		   photo varchar2(200) not null
);


drop table movie purge;