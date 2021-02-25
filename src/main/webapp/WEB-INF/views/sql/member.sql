drop table member;
drop sequence member_SEQ;
purge recyclebin;

CREATE TABLE member
(
    seq      NUMBER          NOT NULL, 
    email    VARCHAR2(30)    NULL, 
    pwd      VARCHAR2(20)    NULL, 
    rdate    DATE            NULL, 
);

CREATE SEQUENCE member_SEQ
increment by 1 start with 1 nocache;

insert into member values(member_SEQ.nextval, 'pyhoo78@naver.com','1234', SYSDATE);