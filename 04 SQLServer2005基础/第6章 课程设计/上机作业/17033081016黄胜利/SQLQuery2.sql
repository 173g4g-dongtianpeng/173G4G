--�½���Ʒ����
create table Category(
--��ţ��������Զ�����
cid int primary key identity(1,1),
cname nvarchar(30)not null unique,
Description nvarchar(30)null,)--�½���Ʒ��Ϣ��create table Ware(Wid int primary key identity(1,1),Wname nvarchar(30)not null unique,cid int not null  foreign key references Category(cid),PurchasePrice float  check(len(PurchasePrice)>0),SalesPrice float check(len(SalesPrice)>0),Amount float  check(len(Amount)>0),)--Ա����create table Employee(Eid int primary key identity(1001,1),Ename nvarchar(20) not null,Epassword nvarchar(30) not null check(len(Epassword)>=6),Remark nvarchar(30)null,)--���ۼ�¼��create table SalesInfo(sid int primary key identity(1,1),Wid int  foreign key references ware(wid),SalesDate datetime not null,SalesAmount int  check(len(SalesAmount)>0),Eid int foreign key references Employee(eid),)----ɾ�����ݱ�(ע����ɾ���������ɾ��������)drop table Categorydrop table Waredrop table Employeedrop table SalesInfo