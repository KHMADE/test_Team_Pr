-- member.sql --

drop table member;

create table member(
ID	VARCHAR2(15 BYTE) Primary Key,
PASSWD	VARCHAR2(15 BYTE) NOT NULL,
NAME	VARCHAR2(20 BYTE) NOT NULL,
EMAIL	VARCHAR2(30 BYTE),
GENDER	CHAR(1 BYTE) CHECK(GENDER IN('M','F')),
AGE	NUMBER,
PHONE	VARCHAR2(13 BYTE),
ADDRESS	VARCHAR2(50 BYTE),
ENROLL_DATE	DATE default sysdate
);

insert into MEMBER
values('admin','admin','관리자','admin@iei.or.kr','M',33,'010-7777-8888','서울 강남구',
	to_date('2012-01-23','RRRR-MM-DD'));
	
insert into MEMBER
values('user11','pass11','신사임당','sinsa@iei.or.kr','F',27,'010-7777-8888','서울 강남구',
	to_date('2014-04-23','RRRR-MM-DD'));

insert into MEMBER
values('user22','pass22','이순신','leeshun@iei.or.kr','M',29,'010-7777-8888','서울 강남구',
	to_date('2015-08-23','RRRR-MM-DD'));

insert into MEMBER
values('user33','pass33','홍삼남','hong@iei.or.kr','M',30,'010-7777-8888','서울 강남구',
	to_date('2013-07-23','RRRR-MM-DD'));

SELECT * FROM MEMBER;

COMMIT;

