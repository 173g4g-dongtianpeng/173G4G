
--��Ʒ����
create table Category
(Cid int primary key identity(1,1),
Cname  nvarchar(20) not null unique,
Description nvarchar(200)
)


--��Ʒ��Ϣ��
create table Ware
(
Wid int primary key , 
Wname nvarchar(20) not null unique,
Cid int foreign key references Category (Cid) not null,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
PurchasePrice float check(PurchasePrice>0),SalesPrice float check(SalesPrice>0),Amount float check (Amount>=0),
 )


--Ա����
create table Employee
(Eid int  primary key identity(1001,1),
 Ename nvarchar(20)not null,
 Epassword nvarchar(20)check(len(Epassword)>5), Remark nvarchar(200),
)


--���ۼ�¼��
create table SalesInfo(
Sid int primary key identity(1,1),
Wid int foreign key references Ware(Wid) not null,
SalesDate datetime not null,SalesAmount int check(SalesAmount>0),Eid int  foreign key references Employee(Eid) not null,
)


--����������
--
--
--����
insert into Category values('�ҵ���','')
insert into Category values('������','')
insert into Category values('ʳƷ��','')
insert into Category values('��Ʒ��','')
insert into Category values('������','')



--�����Ʒ����
--
--
--����
insert into Ware values('10010','���Ŀյ�','1','3000','4000','10')
insert into Ware values('10011','���ĵ����','1','5000','5500','9')
insert into Ware values('10012','��ˮ��','2','20','32','100')
insert into Ware values('10013','��ˮ��','2','50','55','50')
insert into Ware values('10014','�ȹ�','3','1','2','10000')
insert into Ware values('10015','����','3','2.0','2.5','500')
insert into Ware values('10016','����','4','2.5','3.0','999')
insert into Ware values('10017','ѩ��','4','2.5','3.0','999')
insert into Ware values('10018','ƹ������','5','50','60','99')
insert into Ware values('10019','��ë����','5','100','111','50')



--Ա����Ϣ��
--
--
--����
insert into Employee values('���ٲ�','111111','��������Ա')
insert into Employee values('����ɭ','222222','��������Ա')


--���ۼ�¼
--
--
--����
--1.�յ�����
Update Ware set Amount=Amount-8 where Wname='���Ŀյ�'
insert into SalesInfo values('10010','2017-12-15','8','1002')
--���������
Update Ware set Amount=Amount-5 where Wname='���ĵ����'
insert into SalesInfo values('10011','2017-12-20','5','1001')
--��ˮ������
Update Ware set Amount=Amount-89 where Wname='��ˮ��'
insert into SalesInfo values('10012','2017-12-13','89','1002')
--��������
Update Ware set Amount=Amount-50 where Wname='����'
insert into SalesInfo values('10015','2017-12-19','50','1001')
--ƹ����������
Update Ware set Amount=Amount-20 where Wname='ƹ������'
insert into SalesInfo values('10018','2017-12-12','20','1001')


--��ѯ����
--
select * from Category
select * from Ware
select * from Employee
select * from SalesInfo
--ɾ�����ݱ�
drop table Category                        
drop table Ware
drop table Employee
drop table SalesInfo
--ɾ����������
delete from SalesInfo where sid='1'
