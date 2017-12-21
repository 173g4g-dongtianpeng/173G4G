--��Ʒ����
create table Category(
--��Ʒ���,��������,����,�Զ�����
Cid int primary key identity (1,1),
--��������,��������,����Ϊ���Ҳ����ظ�
Cname nvarchar(30)not null unique,
--��������,��������,��Ϊ��
Description nvarchar(100)null
)
--��Ϣ��
create table ware(
--��Ʒ��ţ��������ͣ�����������Ϊ��
Wid int primary key not null,
--��Ʒ���ƣ��������ͣ�����Ϊ��
Wname nvarchar(30)not null,
--��Ʒ��������������ͣ�����Ϊ��
Cid int not null foreign key references Category(Cid),
--��Ʒ����,��������,������
PurchasePrice money check(PurchasePrice>0),
--��Ʒ�ۼ�,��������,������
SalesPrice money check(SalesPrice>0),
--��Ʒ���,��������,���������
Amount int check(Amount>0)
)
--Ա����
create table Employee(
--Ա�����,��������,����,�Զ�������1001��ʼ
Eid int primary key identity(1001,1),
--Ա������,��������,����Ϊ��
Ename nvarchar(30)not null,
--Ա������,��������,����������λ
Epassword nvarchar(10)check(len(Epassword)>5),
--��ע,��������,��Ϊ��
Remark nvarchar(100)
)
--���ۼ�¼��
create table SalesInfo(
--,��������,����,�Զ�����
Sid int primary key identity(1,1),
--�����۵���Ʒ�ı�ţ������������
Wid int foreign key references ware(Wid),
--��Ʒ���۵�ʱ�䣬����
SalesDate datetime not null,
--��Ʒ���۵������������ұ������0
SalesAmount int check (SalesAmount>0),
--����Ա�ı�ţ������������
Eid int foreign key references Employee(Eid)
)
--ɾ����Ʒ����
drop table Category
--ɾ����Ϣ��
drop table ware
--ɾ��Ա����
drop table Employee
--ɾ�����ۼ�¼��
drop table SalesInfo