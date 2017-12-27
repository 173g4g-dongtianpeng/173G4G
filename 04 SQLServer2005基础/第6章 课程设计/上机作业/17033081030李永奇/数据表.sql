--�½�Category���ݱ�
create table Category (
cid int primary key identity(1,1),--�Զ���������1��ʼ������
Cname nvarchar(20) not null unique,--�������ƣ�����Ϊ���Ҳ����ظ�
Description nvarchar(20)--�������������Ϊ��
)



--�½���Ʒ��Ϣ��
create table Ware(
wid int primary key,--��Ʒ�ı�ţ��������룩������
Wname nvarchar(30)not null unique,--��Ʒ���ƣ������Ҳ����ظ�
cid int not null foreign key references Category(cid),-- ��Ʒ��������������������
PurchasePrice int check (PurchasePrice>0),--��Ʒ���ۣ��������0
SalesPrice int check(SalesPrice>0),--��Ʒ�ۼۣ��������0
Amount int check(Amount>0))--��Ʒ��������������0



--�½�Ա����
create table Employee(
--Ա����ţ��������Զ���������1001��ʼ
Eid int primary key identity(1001,1),
--Ա������������
Ename nvarchar(5)not null unique,
--Ա�����룬��������λ
Epassword nvarchar(20)check (len(Epassword)>=6),
--��ע���ɲ���
Remark nvarchar(100))



--�½����ۼ�¼��
create table SalesInfo(
--�������Զ���������1��ʼ
Sid int primary key identity(1,1),
--�����۵���Ʒ�ı�ţ������������
Wid int not null foreign key references Ware(wid),
--��Ʒ���۵�ʱ�䣬����
SalesDate  nvarchar(20)not null,
--��Ʒ���۵������������ұ������0
SalesAmount int not null check (SalesAmount>0),
--����Ա�ı�ţ������������
Eid int foreign key references Employee(Eid)
)
