select class  from  student where snam='����'
select * from student where class= 'S2'
select * from student where class=(select class  from  student where snam='����')

select distinct sid from score
select * from student where code in(10004,10005,10006)
select* from student where code in(select distinct sid from score)

--��ѯ�гɼ�������ѧ������Ϣ
--������ĳѧ���ڳɼ����д�����˵����ѧ���гɼ�
select * from student where exists (select *from score where code=sid)
--��ѯû�гɼ�������ѧ������Ϣ
--������ĳѧ���ڳɼ����в�������˵����ѧ��û�гɼ�

select * from student where not exists (select *from score where code=sid)
--������
--1ȷ����
select snam ,cid,score
--2ȷ����
from student
--3ȷ������
inner join score on sid=code
=3
select snam,cid,score
from student ,score
where sid=code
--��������
select snam,cid,score
from student
left join score on sid=code

--��������
select snam,cid,score
from student
right join score on sid=code

--����������
select snam,cid,score
from student
full join score on sid=code

--��������
select code ,snam, cnam
from student 
cross join course

--��ͬ��
 select code,snam,cnam
from student course
---��ѯÿ��ѧ��ÿ�ſεĳɼ������ĳ�ſγ�û�������Ӧ�ĳɼ���ʾΪNULL
select code,snam,cnam,score
from student s
cross join course c
left join score sc
on sc. sid=code and c. cid=sc .cid
order by code
