--�½����ݱ�


---��Ʒ����
create table Category(
----��ţ��������Զ�����
Cid int primary key identity(1,1),
Cname nvarchar(20) not null unique,
Description nvarchar(50) null
)

--��Ʒ��Ϣ��
create table Ware(
Wid int primary key ,
Wname nvarchar(20)not null unique,
Cid int not null foreign key references Category(Cid),
PurchasePrice float not null check(len(PurchasePrice)>0),
SalesPrice float not null check(len(SalesPrice)>0),
Amount int not null check(len(Amount)>0)
)


--Ա����
create table Employee(
Eid int primary key identity(1001,1),
Ename nvarchar(20) not null ,
Epassword nvarchar(20) not null check(len(Epassword)>5),
Remark  nvarchar(50) null
)

--���ۼ�¼��
create table SalesInfo(
Sid int primary key identity(1,1),
Wid int not null foreign key references Ware(Wid),
SalesDate datetime not null,
SalesAmount int not null check(len(SalesAmount)>0),
Eid int not null foreign key references Employee(Eid)
)


--ɾ�����ݱ�(ע����ɾ���������ɾ��������)
drop table Category
drop table Ware
drop table Employee
drop table SalesInfo

