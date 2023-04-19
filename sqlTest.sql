--test


select * from tab;

select * from tab where tname='EMP';



create table temp(
id number primary key,
name varchar2(20)
);

desc temp;


insert into temp(id, name)
values (100, '홍길동');

select * from temp;

commit;

insert into temp(name) values('아무개');

insert into temp (id, name)
values (100, '개똥이');
 

insert into temp(id, name)
values (200, '정상이');

select * from temp;
commit;


create table temp2(id varchar2(50));

desc temp2;

/*
BEGIN
    FOR i IN 1..100 LOOP
        insert into temp2(id) values ('A' || to_char(i));
    END LOOP;
END;
*/
select * from temp2;



create table temp3(
memberid number(3) not null,
name varchar2(10),
regdate date default sysdate
);



desc temp3;

select sysdate from dual;

insert into temp3 (memberid, name, regdate)
values (100, '홍길동', '2023-04-19');

select * from temp3;

commit;

insert into temp3 (memberid, name)
values (200, '김유신');

select * from temp3;

commit;

insert into temp3(memberid)
values(300);

select * from temp3;

commit;

create table temp4(id number);
create table temp5(id number);

desc temp4;
desc temp5;

insert into temp4(id) values(1);
insert into temp4(id) values(2);
insert into temp4(id) values(3);
insert into temp4(id) values(4);
insert into temp4(id) values(5);
insert into temp4(id) values(6);
insert into temp4(id) values(7);
insert into temp4(id) values(8);
insert into temp4(id) values(9);
insert into temp4(id) values(10);


commit;

select * from temp4;


insert into temp5(id)
select id from temp4;

select * from temp5;

commit;

select * from temp5;


create table copyemp
 as 
select * from emp;

select * from copyemp;


create table copyemp2
as 
select empno, ename, sal
from emp
where deptno=30;


select * from emp;
select * from copyemp2 ;


create table copyemp3
as select * from emp where 1=2;

select * from copyemp3;




















