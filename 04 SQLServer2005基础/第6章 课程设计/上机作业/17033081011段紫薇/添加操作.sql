select * from Category
select * from Ware
select* from Employee
select* from SalesInfo

--��Category���������
insert into Category values('������Ʒ��','')
insert into Category values('�ҵ���','')
insert into Category values('ʳƷ��','')
insert into Category values('��Ʒ��','')
insert into Category values('�Ҿ���','')


--��Ware���������
insert into Ware values('10010','��¶������','1','4.50','5.80','231')
insert into Ware values('10011','����ϴ��ˮ','1','19.40','26.90','65')
insert into Ware values('10012','��������','1','8.10','12.30','103')
insert into Ware values('10013','΢��¯','2','388.60','506.30','50')
insert into Ware values('10014','�ȹ����','3','2.60','4.20','96')
insert into Ware values('10015','С���ҷ�����','3','2.60','4.20','250')
insert into Ware values('10016','����','4','3.60','5.90','125')
insert into Ware values('10017','��Ľϣ','4','12.70','15.90','200')
insert into Ware values('10018','����','5','58.10','86.30','103')
insert into Ware values('10019','���Ŀյ�','5','1008.60','1450.30','65')


--��Employee���������
insert into Employee values('����','123456','')
insert into Employee values('����˪','456789','')

 

----��SalesInfo���������
Update Ware set Amount=Amount-1 where Wname='��¶������'Insert into SalesInfo values(10010,'2009-10-2',1,1001)Update Ware set Amount=Amount-2 where Wname='����ϴ��ˮ'Insert into SalesInfo values(10011,'2010-10-2',2,1002)     Update Ware set Amount=Amount-1 where Wname='΢��¯'Insert into SalesInfo values(10013,'2009-11-2',1,1001)Update Ware set Amount=Amount-5 where Wname='����'Insert into SalesInfo values(10016,'2009-10-27',5,1002)Update Ware set Amount=Amount-1 where Wname='���Ŀյ�'Insert into SalesInfo values(10019,'2009-12-13',1,1001)