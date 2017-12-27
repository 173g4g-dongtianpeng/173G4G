--��Ʒ����
create table Category(
Cid int primary key identity(1,1),--�������
Cname nvarchar(20) not null unique,--�������
Description nvarchar(30) not null--�������
)
--��Ʒ��Ϣ��
create table Ware(
Wid int primary key identity(1,1),--��Ʒ����
Wname nvarchar(50) not null unique,--��Ʒ����
Cid int foreign key references Category(Cid),--��Ʒ������
PurchasePrice decimal(10,2) not null check (PurchasePrice>0),--��Ʒ����SalesPrice decimal(10,2) not null check (SalesPrice>0),--��Ʒ�ۼ�Amount int not null check (Amount>0)--��Ʒ���
)
--Ա����
create table Employee(
Eid int primary key identity(1001,1),--Ա������
Ename nvarchar(20) not null,--Ա������
Epassword nvarchar(20) not null check (len(Epassword)>6),--Ա������
Remark nvarchar(30) not null--��ע
)
--���ۼ�¼��
create table SalesInfo(
Sid int primary key identity(1,1),--���ۼ�¼����
Wid int foreign key references Ware(Wid),--������Ʒ������
SalesDate datetime not null,--����ʱ��
SalesAmount int not null default 1,--��������
Eid int foreign key references Employee(Eid)--����Ա���
)
--ɾ����Ʒ����
drop table Category
--ɾ����Ʒ��Ϣ��
drop table Ware
--ɾ��Ա����
drop table Employee
--ɾ�����ۼ�¼��
drop table SalesInfo