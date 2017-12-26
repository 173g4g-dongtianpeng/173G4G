--�鿴��
select *from Category
select *from Ware
select *from Employee
select *from SalesInfo


--������Ʒ����
create table Category(
Cid int primary key identity(1,1),
Cname nvarchar(10) not null unique,
Description nvarchar(50) null
)



--������Ʒ��Ϣ��
create table Ware(
Wid int primary key identity(1,1),
Wname nvarchar(10) not null unique,
Cid int not null foreign key references Category(Cid),
PurchasePrice int check(len(PurchasePrice)>0),
SalesPrice int check(len(SalesPrice)>0),
Amount int check(len(Amount)>0)
)


--����Ա����
create table Employee(
Eid int primary key identity(1001,1),
Ename nchar(10)not null,
Epassword nchar(20)check(len(Epassword)>6),
Remark nchar(10) null 
)


--�������ۼ�¼��
create table SalesInfo(
Sid int primary key identity(1,1),
Wid int not null foreign key references Ware(Wid),
SalesDate datetime not null,
SalesAmount int not null check(len(SalesAmount)>0),
Eid int not null foreign key references Employee(Eid)
)




--create table����������﷨�������������
--primary key��������ֶ�Ϊ����
--identity(1,1)������Ϊ��ʶ�У���ʼֵΪ1������ֵΪ1
--null/not null����������Ƿ�Ϊnull�������д��Ĭ��Ϊnull
--check(len(������)>0):����Լ�����涨���е�ֵ�ĳ��ȱ������0
--default������Ĭ��ֵ������Ĭ�ϵ�ֵ
--unique������ΨһԼ�����涨���е�ֵ���ɷ����ظ�
--foreign key���������Ϊ���
--references������������������ĳ�������ĳ�����б��г������һ
--�еĶ����⣬�����еĶ�������,������