--�����Ʒ���
insert into Category(Cname)values('������Ʒ')
insert into Category(Cname)values('������')
insert into Category(Cname)values('ʳƷ��')
insert into Category(Cname)values('���ܲ�Ʒ��')
insert into Category(Cname)values('������')
insert into Category values('С����','')
--�����Ʒ��Ϣ
insert into ware values('��������','1','5.8','6.8','230')
insert into Ware( Wname,Cid,PurchasePrice ,SalesPrice ,Amount )values('��¶������','1','4.5','5.80','231')
insert into Ware values('��������','2','4500','5500','225')
insert into Ware values('�����ֻ�','2','1900','2600','223')
insert into Ware values('�������','2','4400','5300','221')
insert into Ware values('��Ƭ','3','2','3','2460')
insert into Ware values('������','3','0.5','3','2464')
insert into Ware values('����ţ��','3','25','35','2454')
insert into Ware values('�ɳԷ�����','3','2','3','2455')
insert into Ware values('�𼦷�����','3','2','3','2455')

--���Ա����Ϣ
insert into Employee values('�����','990803','����')
insert into Employee values('С��','990714','����')


--������ۼ�¼
insert into SalesInfo values('1','2017-05-06','6','1001')
Update Ware set Amount=Amount-5 where Wid='1'

insert into  SalesInfo values('3','2017-9-9','6','1001')
Update Ware set Amount=Amount-6 where Wid='3'


insert into SalesInfo values('1','2017-05-06','6','1001')
Update Ware set Amount=Amount-5 where Wid='1'

insert into  SalesInfo values('5','2017-9-9','4','1001')
Update Ware set Amount=Amount-2 where Wid='5'

insert into  SalesInfo values('5','2017-9-9','4','1002')
Update Ware set Amount=Amount-2 where Wid='5'

insert into  SalesInfo values('6','2017-9-10','4','1002')
Update Ware set Amount=Amount-2 where Wid='6'

insert into  SalesInfo values('3','2017-9-10','4','1001')
Update Ware set Amount=Amount-4 where Wid='3'
--��Ʒ���
select*from Category
--��Ʒ��Ϣ
select*from Ware
--Ա��
select*from Employee
--���ۼ�¼
select*from SalesInfo


