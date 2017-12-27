--��Ʒ����
create  table Category(
--��� ���������Զ�����
Cid int primary key identity (1,1),
--unique ����ΨһԼ�����涨���в����ظ�
Cname nvarchar(30)not null unique,
Description nvarchar(20) null
)
--��Ʒ��Ϣ��
create table Ware(
Wid int primary key identity(10010,1),
Wname nvarchar(10)not null unique,
Cid int not null foreign key references Category(Cid),
PurchasePrice int not null check(len (PurchasePrice)>0),
SalesPrice int not null check(len (SalesPrice)>0),
Amount int not null check(len(Amount)>0)
)
--Ա����
create table Employee(
Eid int primary key identity(1001,1),
Ename nvarchar(10)  not null,
Epassword nvarchar(10)not null check(len(Epassword)>6),
Remark nvarchar(20)null
)
--���ۼ�¼��Saleslnfo��
create table Saleslnfo(
Sid int primary key identity(1,1),
Wid int not null foreign key references Ware(Wid),
SalesDate datetime null,
SalesAmount int not null check(len(SalesAmount)>0),
Eid int not null foreign key references Employee(eid)
)
--ɾ�����ݱ�ע����ɾ���������ɾ��������
drop table Category
drop table Ware
drop table Employee
drop table Saleslnfo  