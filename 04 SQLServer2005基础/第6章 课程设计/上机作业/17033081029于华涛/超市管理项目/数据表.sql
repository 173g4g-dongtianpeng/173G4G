drop table Category
--��Ʒ����Category��
create table Category(
Cid int primary key identity(1,1),
Cname nvarchar(20) not null unique,
Dsecription nvarchar(50) not null
)
drop table Ware
--��Ʒ��Ϣ��Ware��
create table Ware(
Wid	 int primary key ,--����	��Ʒ�ı�ţ��������룩������
Wname nvarchar(30) not null unique,	--�ַ�	��Ʒ���ƣ������Ҳ����ظ�
Cid	int  not null foreign key references Category(cid) , --����	��Ʒ��������������������
PurchasePrice int not null check(len(PurchasePrice)>0),   	--����	��Ʒ���ۣ��������0
SalesPrice	int not null check(len(SalesPrice)>0),   --����	��Ʒ�ۼۣ��������0
Amount	int not null check(len(Amount)>0)  --����	��Ʒ��������������0
)
--Ա����Employee)
create table Employee(
         --����	Ա����ţ��������Զ���������1001��ʼ
Eid	int primary key identity(1001,1),
         --�ַ�	Ա������������
Ename	nvarchar(10) not null,
         --	�ַ�	Ա�����룬��������λ
Epassword nvarchar(20) check(len(Epassword)>6),
	     --�ַ�	��ע���ɲ���
Remark nvarchar(100)
)
--���ۼ�¼��SalesInfo��
create table SalesInfo(
--����	�������Զ���������1��ʼ
Sid int primary key identity(1,1),
--  	����	�����۵���Ʒ�ı�ţ������������
Widint int not null,
--  	����	��Ʒ���۵�ʱ�䣬����
SalesDate datetime not null ,
--   ����	��Ʒ���۵������������ұ������0
SalesAmount int not null check(len(SalesAmount)>0),
--	���� ����Ա�ı�ţ������������
Eid	int foreign key references Employee(Eid) 
)
--��ѯ
select*from Category
select*from ware
select*from Employee
select*from SalesInfo
