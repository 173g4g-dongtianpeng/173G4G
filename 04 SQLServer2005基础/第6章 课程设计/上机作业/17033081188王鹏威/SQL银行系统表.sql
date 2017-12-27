--�½����ݱ�
--��Ʒ����
create table Category(
--�Զ�����
--Ϊ����`1
Cid int primary key identity(1,1),
--�������ƣ�����Ϊ���Ҳ����ظ�
Cname nchar(20) not null unique,
--�������������Ϊ��
Description nvarchar(50)null,
)
--��Ʒ��Ϣ��
create table Ware(
--��Ʒ�ı�ţ��������룩������
Wid int primary key not null,
--��Ʒ���ƣ������Ҳ����ظ�
Wname nchar(30)not null unique,
--��Ʒ��������������������
Cid int foreign key references Category(Cid),--��Ʒ���ۣ��������0PurchasePrice decimal check(PurchasePrice>0),--��Ʒ�ۼۣ��������0SalesPrice decimal check(SalesPrice>0),--��Ʒ��������������0Amaount decimal check(Amaount>0)
)
--Ա����
create table Employee(
--Ա����ţ��������Զ���������1001��ʼ
Eid int primary key identity(1001,1),
--Ա������������Ename varchar(20)not null,
--Ա�����룬��������λEpassword nchar(10) not null check(len(Epassword)>6),
--��ע���ɲ���
Remark nvarchar null
)
--���ۼ�¼��
create table SalesInfo(
--�������Զ���������1��ʼSid int primary key identity(1,1),
--�����۵���Ʒ�ı�ţ������������Wid int not null foreign key references Ware(Wid),
--��Ʒ���۵�ʱ�䣬����SalesDate datetime not null,--��Ʒ���۵������������ұ������0SalesAmount int not null check(SalesAmount>0),--����Ա�ı�ţ������������Eid int not null foreign key references Employee(Eid)
)
--ɾ����Ʒ����
drop table Category
--ɾ����Ʒ��Ϣ��
drop table Ware
--ɾ��Ա����
drop table Employee
--ɾ�����ۼ�¼��
drop table SalesInfo