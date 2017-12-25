drop table Categor
drop table Ware
drop table Employee
drop table SalesInfo


--��Ʒ����
create table Categor
(
--�Զ����� ��һ��ʼ ����
Cid int primary key identity(1,1),
--�������� ����Ϊ���Ҳ����ظ�
Cname nvarchar(20) not null unique,
--�����������Ϊ��
Description nvarchar(50) null
)
--��Ʒ��Ϣ��
create table Ware(
Wid int not null primary key ,
Wname nvarchar(50)not null,
Cid int not null foreign key references Category(Cid),
PurchasePrice int check(PurchasePrice>0),
SalesPrice int check(SalesPrice>0),
Amount int check(Amount>0)
)
--Ա����
create table Employee(
Eid int primary key identity(10001,1),
Ename nvarchar(20) not null,
Epassword nvarchar(20) check(len(Epassword)>5),
Remark nvarchar(200) null
)
--���ۼ�¼��
create table SalesInfo(
Sid int primary key identity(1,1),
Wid int not null foreign key references Ware(Wid),
SalesDate datetime not null,
SalesAmount int check(len(SalesAmount)>0),
Eid int not null foreign key references Employee(Eid)
)
