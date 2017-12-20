--�½���Ʒ����
create table Category(
--���   ��λ����    �Զ�����   
Cid int primary key identity(1,1),
--����
Cname nvarchar(30) not null unique, 
--��Ʒ����
Description nvarchar(30)null,
) 
--�½���Ʒ��Ϣ��
create table Ware(
--��Ʒ��Ϣ��� ��λ����
Wid int primary key identity(1,1),
--��Ʒ����               �����ظ�
Wname nvarchar(50) not null unique,
--��Ʒ�������
Cid int foreign key references Category(Cid),
--��Ʒ����
PurchasePrice decimal(10,2) not null check(len(PurchasePrice)>0),--��Ʒ�ۼ�SalesPrice decimal (10,2) not null check(len(SalesPrice)>0),--��Ʒ���Amount decimal (10,2) not null check(len(Amount)>0),
)
--�½�Ա����
create table Employee(
--Ա����ţ��������Զ���������1001��ʼEid decimal primary key identity(1001,1),--Ա������Ename nvarchar(30) not null,--Ա�����룬����������λEpassword nvarchar(30) not null check(len(Epassword)>=6),--��ע���ɲ���Remark nvarchar(20) null,
)
--�½����ۼ�¼��
create table SalesInfo(
--�������Զ���������1��ʼ
Sid int primary key identity(1,1),
--�����۵���Ʒ�ı�ţ������������
Wid int foreign key references Ware(wid),
--��Ʒ����ʱ��
SalesDate datetime null,
--��Ʒ���۵������������ұ������0SalesAmount float check(len(SalesAmount)>0),--����Ա�ı�ţ������������Eid decimal foreign key references Employee(Eid),
)

--ɾ�����ۼ�¼��
drop table SalesInfo
--ɾ��Ա����
drop table Employee
--ɾ����Ʒ��Ϣ��
drop table Ware
--ɾ����Ʒ��
drop table Category
