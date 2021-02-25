create user spring2 identified by java;
grant resource, connect to spring2;
conn spring2/java;

drop table CONTENT;
drop sequence CONTENT_SEQ;

create table CONTENT (
   SEQ number, 
   ID varchar2(50),
   SUBJECT varchar2(100),
   DESCRIPTION varchar2(4000), 
   CODE varchar2(4000)
); 
create sequence CONTENT_SEQ increment by 1 start with 1 nocache;

commit;