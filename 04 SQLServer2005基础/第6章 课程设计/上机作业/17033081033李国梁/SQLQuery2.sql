--��Ʒ����
create table Category(
--�������������ͣ��������Զ�����
cid int primary key identity(1,1),
--�������������ͣ�ΨһԼ��
cname nvarchar(20)not null unique,
--�������������ͣ�Ϊ��Ϊ��
description nvarchar(30)null,
)

--��Ʒ��Ϣ��
create table Ware(
--�������������ͣ�������
wid int primary key ,
--�������������ͣ�ΨһԼ��
wname nvarchar (20) not null unique,
--�������������ͣ����
cid int not null foreign key references Category(cid),
--�������������ͣ�����Լ��
PurchasePrice int check(PurchasePrice>0),--�������������ͣ�����Լ��SalesPrice int check(SalesPrice>0),--�������������ͣ�����Լ��Amount int check(Amount>0))--Ա����create table Employee(--�������������ͣ��������Զ�����Eid int  primary key identity (1001,1),--�������������ͣ�ΨһԼ��Ename nvarchar(20) not null unique,--�������������ͣ�����Լ��Epassword nvarchar(10)not null check(Epassword>6),--�������������ͣ�Ϊ��Ϊ��Remark nvarchar(50) null,)--���ۼ�¼��create table SalesInfo(--�������������ͣ��������Զ�����Sid int primary key identity(1,1),--�������������ͣ����wid int not null foreign key references Ware(Wid),--�������������ͣ�Ϊ��Ϊ��SalesDate datetime not null,--�������������ͣ�����Լ��SalesAmount int check(SalesAmount>0),--�������������ͣ����Eid int not null foreign key references Employee(Eid),)--ɾ��drop table Categorydrop table Ware drop table  Employeedrop table SalesInfo