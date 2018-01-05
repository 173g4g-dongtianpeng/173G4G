drop table Category
drop table Ware
drop table Employee
drop table Saleslnfo
--������Ʒ����
create table Category
(
--Cid ����  �Զ����� ��1��ʼ
Cid int primary key identity(1,1),
--��������
Cname nvarchar(20) not null unique,
--��������
Description nvarchar(500)
)
--������Ʒ��Ϣ��
create table Ware(
--��Ʒ���
Wid int primary key not null,
--��Ʒ����
Wname nvarchar(20) not null unique,
--��Ʒ�������
Cid int not null foreign key references Category(Cid ),
--��Ʒ����
PurchasePrice float not null check(len(PurchasePrice)>0),
--��Ʒ�ۼ�
SalesPrice float not null check(len(SalesPrice)>0),
--��Ʒ�����
Amount int not null check(len(Amount)>0)
)
--�½�Ա����
create table Employee(
--Ա�����
Eid int primary key identity(1001,1),
--Ա������
Wname nvarchar(20) not null,
--Ա������
Epassword nvarchar(10) not null check(len(Epassword)>=6),
--��ע
Remark nvarchar(50) null
)
--���ۼ�¼��
create table Saleslnfo
(
Sid int primary key identity(1,1),
--�����۵���Ʒ�ı��
Wid int not null foreign key references Ware(Wid),
--��Ʒ���۵�ʱ��
SalesDate nvarchar(10) not null,
--��Ʒ��������
SalesAmount int not null check(len(SalesAmount)>0),
--����Ա���
Eid int not null foreign key references Employee(Eid)
)