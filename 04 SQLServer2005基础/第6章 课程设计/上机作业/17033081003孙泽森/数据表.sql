select * from Category
select * from Ware
select * from Employee
select * from SalesInfo
--�½���Ʒ����
create table Category(
--���,����,�Զ�����
Cid	int primary key identity(1,1),
Cname nvarchar(30) not null unique,
Description nvarchar(30) null,
)
--�½���Ʒ��Ϣ��
create table Ware(
Wid int primary key,
Wname nvarchar(20) not null unique,
Cid int not null foreign key references Category(Cid),
PurchasePrice float check(PurchasePrice > 0),SalesPrice float check(SalesPrice > 0),Amount int check(Amount > 0)
)
--�½�Ա����
create table Employee(
Eid int primary key identity(1001,1),
Ename nvarchar(20) not null,
Epassword nvarchar(30) not null check(len(Epassword)>5), Remark nvarchar(30) null
)
--�½����ۼ�¼��
create table SalesInfo(
Sid int primary key identity(1,1),
Wid	int not null foreign key references Ware(Wid),
SalesDate datetime not null,SalesAmount int check(SalesAmount>0),Eid int not null foreign key references Employee(Eid)
)
drop table Category
drop table Ware
drop table Employee
drop table SalesInfo
