--�鿴���ݱ�
select*from Category
select*from Ware
select*from Employee
select*from SalesInfo
--��Ʒ���
insert into Category(Cname,Description) values('������','������Ʒ������')
insert into Category (Cname,Description)values('ʳƷ��','ʳ����Ʒ������')
insert into Category(Cname,Description) values('�Ĵ�������','�鼮��Ʒ������')
insert into Category (Cname,Description)values('��װ��','�·���Ʒ������')
--��Ʒ��Ϣ
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amaount) values('40001','��������','1','45','55','50')
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amaount) values('40002','���׷��Ƿ�','2','3','5','60')
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amaount) values('40003','��ˮ䰴���','3','1','2','70')
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amaount) values('40004','����¥�Ρ�','3','45','55','80')
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amaount) values('40005','���������塷','3','45','55','90')
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amaount) values('40006','����','1','25','32','45')
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amaount) values('40007','�Ϳ�Ь','4','45','55','60')
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amaount) values('40008','����','4','405','425','70')
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amaount) values('40009','OPPO R11','1','4321','5565','80')
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amaount) values('40010','�Ų����޷�','1','225','245','90')
insert into Ware(Wid,Wname,Cid,PurchasePrice,SalesPrice,Amaount) values('40011','ţ�������','2','8','10','100')
--Ա����Ϣ
insert into Employee(Ename,Epassword)values('�Ž�','woainid')
insert into Employee(Ename,Epassword)values('������','diniiaow')
insert into Employee(Ename,Epassword)values('������','woaidni')
insert into Employee(Ename,Epassword)values('����','woaidnis')
insert into Employee(Ename,Epassword)values('Ѧ֮ǫ','wwadjwa')
--���ۼ�¼
insert into SalesInfo(Wid,SalesDate,SalesAmount,Eid)values('40001','2016-9-10','10','1002')
insert into SalesInfo(Wid,SalesDate,SalesAmount,Eid)values('40011','2015-12-11','30','1003')
insert into SalesInfo(Wid,SalesDate,SalesAmount,Eid)values('40006','2016-4-22','8','1004')

