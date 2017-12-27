--��һ��--�½����ݿ�
--�½����ݿ�
create database SuperMarket
on(
--ָ�����ݿ���
name ='SuperMarket',
--ָ��·���Լ��ļ���׺
filename ='C:\SuperMarket.mdf',
--ָ�����ݿ��ʼ����
size =3MB,
--ָ�����ݿ��������
maxsize =50MB,
--ָ�����ݿ��Զ���������
filegrowth =1MB
)
--�½����ݿ���־
log on(
--ָ�����ݿ���
name ='SuperMarket_log',
--ָ��·���Լ��ļ���׺
filename ='C:\SuperMarket_log.mdf',
--ָ�����ݿ��ʼ����
size =3MB,
--ָ�����ݿ��������
maxsize =50MB,
--ָ�����ݿ��Զ���������
filegrowth =10%
)
--ɾ�����ݿ�
drop database SuperMarket


--�ڶ���--�½����ݱ�
--�½����ݱ�
--��Ʒ����
create table Category
(
--�������������ͣ�Ϊ��Ϊ��
--primary key����
--identity�Զ�����
Cid int primary key identity(1,1),
--�������������ͣ�Ϊ��Ϊ��
--not null��Ϊ��
Cname nvarchar(20) not null  unique,
--�������������ͣ�Ϊ��Ϊ��
--default''Ϊ�գ�Ĭ��Ϊ
Description nvarchar(20) 
)


--�½����ݱ�
--��Ʒ��Ϣ��
create table Ware
(
--�������������ͣ�Ϊ��Ϊ��
--primary key����
--identity�Զ�����
Wid int primary key identity(1,1),
--�������������ͣ�Ϊ��Ϊ��
--not null��Ϊ��
Wname nvarchar(20) not null,
--�������������ͣ�Ϊ��Ϊ��
--not null��Ϊ��
--foreign key ���
Cid int not null foreign key references Category(Cid),
--�������������ͣ�Ϊ��Ϊ��
--checkԼ��
PurchasePrice int check(PurchasePrice>=0 ),
--�������������ͣ�Ϊ��Ϊ��
--checkԼ��
SalesPrice int check ( SalesPrice>=0 ),
--�������������ͣ�Ϊ��Ϊ��
--checkԼ��
Amount int check(Amount>=0 )
)


--�½����ݱ�
--Ա����
create table Employee
(
--�������������ͣ�Ϊ��Ϊ��
--primary key����
--identity�Զ�����
Eid int primary key identity(1001,1),
--�������������ͣ�Ϊ��Ϊ��
--not null��Ϊ��
Ename nvarchar(20) not null,
--�������������ͣ�Ϊ��Ϊ��
--not null��Ϊ��
--foreign key ���
Cid int not null foreign key references Category(Cid),
--�������������ͣ�Ϊ��Ϊ��
--checkԼ��
Epassword bigint check(Epassword>=100000 ),
Remark nvarchar(20) 
)


--�½����ݱ�
--���ۼ�¼��
create table SalesInfo
(
--�������������ͣ�Ϊ��Ϊ��
--primary key����
--identity�Զ�����
Sid int primary key identity(1,1),
--�������������ͣ�Ϊ��Ϊ��
--not null��Ϊ��
--foreign key ���
Wid int not null foreign key references Ware(Wid),
--�������������ͣ�Ϊ��Ϊ��
--not null��Ϊ��
--foreign key ���
Eid int not null foreign key references Category(Cid),
--�������������ͣ�Ϊ��Ϊ��
--not null��Ϊ��
SalesDate nvarchar(30) not null ,
--�������������ͣ�Ϊ��Ϊ��
--checkԼ��
SalesAmount int check(SalesAmount>=0 )
)

--ɾ�����ݱ�
drop table Category
drop table Ware
drop table Employee
drop table SalesInfo



--������--�������ݣ��½�����
--��������
insert into Category(Cname,Description)values('ʳƷ��','�óԲ��ϻ�!')
insert into Category(Cname,Description)values('������','�����ӵ粻����!')
insert into Category(Cname,Description)values('�Ҿ���','�����Լ���!')
 
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('���˱���',1,2,5,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('���˼���',1,22,55,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('����ţ��',1,20,50,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('���˻���',1,20,50,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('��������',1,12,25,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('��������',1,12,15,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('������ˢ',1,12,25,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('�����۾�',1,200,500,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('���˿���',1,20,50,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('����ñ��',1,20,50,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('����',2,2000,5000,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('�����',2,2000,5000,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('�����',2,120,500,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('�յ�',2,2000,5000,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('ԭ�ӵ�',2,2000,5000,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('��',3,2000,5000,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('����',3,200,500,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('����',3,200,500,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('�羺��',3,200,500,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('�ϰ�',3,20,50,100)
insert into Ware (Wname,Cid,PurchasePrice,SalesPrice,Amount)values ('����',3,2000,5000,100)

insert into Employee (Cid,Ename,Epassword,Remark)values(1,'����',123456,'Ա��')
insert into Employee (Cid,Ename,Epassword,Remark)values(1,'����',123456,'Ա��')
insert into Employee (Cid,Ename,Epassword,Remark)values(1,'Ф��',123456,'Ա��')
insert into Employee (Cid,Ename,Epassword,Remark)values(1,'����',123456,'Ա��')
insert into Employee (Cid,Ename,Epassword,Remark)values(2,'���Ƿ�',123456,'Ա��')
insert into Employee (Cid,Ename,Epassword,Remark)values(2,'���Ʒ�',123456,'Ա��')
insert into Employee (Cid,Ename,Epassword,Remark)values(3,'������',123456,'Ա��')
insert into Employee (Cid,Ename,Epassword,Remark)values(3,'Сë',123456,'Ա��')

insert into SalesInfo(Wid,Eid,SalesDate,SalesAmount)values(1,1,'2017-12-20',50)
insert into SalesInfo(Wid,Eid,SalesDate,SalesAmount)values(2,1,'2017-11-23',51)
insert into SalesInfo(Wid,Eid,SalesDate,SalesAmount)values(3,1,'2017-11-22',58)
insert into SalesInfo(Wid,Eid,SalesDate,SalesAmount)values(4,1,'2017-11-21',59)
insert into SalesInfo(Wid,Eid,SalesDate,SalesAmount)values(5,1,'2017-11-20',100)
insert into SalesInfo(Wid,Eid,SalesDate,SalesAmount)values(6,1,'2017-11-19',100)
insert into SalesInfo(Wid,Eid,SalesDate,SalesAmount)values(7,1,'2017-10-20',100)
insert into SalesInfo(Wid,Eid,SalesDate,SalesAmount)values(8,1,'2017-10-19',100)
insert into SalesInfo(Wid,Eid,SalesDate,SalesAmount)values(9,1,'2017-10-18',100)
insert into SalesInfo(Wid,Eid,SalesDate,SalesAmount)values(12,2,'2017-9-19',100)
insert into SalesInfo(Wid,Eid,SalesDate,SalesAmount)values(15,2,'2017-9-20',100)


--������--���ݵĲ�ѯ
--ɾ�����ݿ� 
drop database SuperMarket
--ɾ�����ݱ�
drop table Category
drop table Ware
drop table Employee
drop table SalesInfo
--ɾ������
delete from Category 
delete from Ware 
delete from Employee 
delete from SalesInfo 
--ɾ��ָ��������
delete from ���� where ����='  '
--�޸�ȫ������
update SalesInfo  set  SalesDate='2017-12-20'
--�޸�ָ������
update SalesInfo set SalesAmount=10 where Wid=15 and Eid=2
--��ѯ����
select * from Category
select * from Ware
select * from Employee
select * from SalesInfo
--ʹ��AS������ֱ�Ӳ�ѯ�����
select Cname ����, Description  ����  from  Category
select  Wid ��Ʒ���,Wname ��Ʒ����,Cid ���,PurchasePrice  ����,SalesPrice  �ۼ�,Amount  ���  from Ware
select Cid ���,Ename ����,Epassword  ����,Remark  ְλ from Employee
select Wid ���,Eid ���,SalesDate ����,SalesAmount �۳����� from SalesInfo
--�����ѯ����Ʒ���ƣ����۸���������
select Wname ��Ʒ����,Amount ���۸���,SalesPrice -PurchasePrice  ����      from   Ware  order by  SalesPrice -PurchasePrice    desc
--�������򣨶���Ʒ������ۼ۽���
select Wid ��Ʒ���,Wname ��Ʒ����,Cid ���,PurchasePrice  ����,SalesPrice  �ۼ�,Amount  ���   from  Ware  order by  SalesPrice desc
--ӯ���ܶ�
--������--1.ȷ����--2.ȷ����--ȷ������--�����ӹؼ��֣�inner join��
select   Ware.Wid ��Ʒ���,  Wname ��Ʒ����,   SalesAmount �۳�����,   SalesPrice -PurchasePrice  ��������,  Eid ����,
(SalesPrice -PurchasePrice)*SalesAmount   ��ӯ��    from Ware          inner join SalesInfo  on SalesInfo.Wid=Ware.Wid  
 order by  (SalesPrice -PurchasePrice)*SalesAmount  desc   
--��ǰ��ӯ�����н�������
select top 5  Ware.Wid ��Ʒ���,  Wname ��Ʒ����,   SalesAmount �۳�����,   SalesPrice -PurchasePrice  ��������,  Eid ����,
(SalesPrice -PurchasePrice)*SalesAmount   ��ӯ��    from Ware          inner join SalesInfo  on SalesInfo.Wid=Ware.Wid  
 order by  (SalesPrice -PurchasePrice)*SalesAmount  desc   
