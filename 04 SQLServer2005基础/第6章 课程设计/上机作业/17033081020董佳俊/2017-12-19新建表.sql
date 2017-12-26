
--�½���Ʒ����
create table Supermarket(
--��ţ��������Զ�����
cid int primary key identity(10001,1),
cname nvarchar(10) not null unique,
description nvarchar(20) null,
)
--�½���Ʒ��Ϣ��
create table product(
wid int primary key identity(1,1),
wname nvarchar(20) not null unique,
cid int not null foreign key references Supermarket(cid),
purchaseprice int not null  check(len(purchaseprice)>0),
sales int not null check(len(sales)>0),
amount int not null check(len(amount)>0)
)
--�½�Ա����
create table employee(
eid int not null primary key identity(1001,1),
ename nvarchar(4) not null, 
epassword nvarchar(12)not null check(len(epassword)>5),
remark nvarchar(100)
)
--���ۼ�¼��
create table sales(
sid int not null primary key identity(1,1),
wid int not null  foreign key references product(wid),
saelsdate datetime null,
salesamount int check(len(salesamount)>0),
eid int not null foreign key references employee(eid)
)
--��ѯ��ɾ��
select*from Supermarket
select*from product
select*from employee
select*from sales

drop table Supermarket
drop table product
drop table employee
drop table sales