--�����Ʒ��
insert into Category values('ʳƷ��','')
insert into Category values('������','')
insert into Category values('��ʳ��','')
insert into Category values('������','')
insert into Category values('������','')

--�����Ʒ��Ϣ
insert into ware values('��¶������','2','4.50','5.58','231')
insert into ware values('��������','2','1.80','2.27','120')
insert into ware values('��������','2','2.60','4.20','96')
insert into ware values('����˿ϴ��ˮ','2','8.10','12.30','103')
insert into ware values('Ʈ��ϴ��ˮ','2','12.70','15.90','56')
insert into ware values('����ϴ��ˮ','2','19.40','26.90','65')
insert into ware values('����ֽ','2','4.50','5.58','231')
insert into ware values('��ˢ','2','4.50','5.58','150')
insert into ware values('����','1','4.50','5.58','100')
insert into ware values('����','4','50','70','50')

--���Ա����Ϣ
insert into Employee values('���ٲ�','123456','')
insert into Employee values('������','654321','')
insert into Employee values('�����','456123','')

--������ۼ�¼��
Insert into SalesInfo values('1','2017-12-19','1','1001')
Update Ware set Amount=Amount-1 where Wid='1'
insert into Salesinfo values('2','2017-12-18','5','1002')
Update Ware set Amount=Amount-5 where Wid='2'
insert into Salesinfo values('10','2017-12-18','2','1002')
Update Ware set Amount=Amount-2 where Wid='10'
insert into Salesinfo values('7','2017-12-18','3','1002')
Update Ware set Amount=Amount-3 where Wid='7'
insert into Salesinfo values('9','2017-12-18','4','1002')
Update Ware set Amount=Amount-4 where Wid='9'







select*from Category
select*from ware
select*from SalesInfo
select*from Employee
