select*from Category
select*from Ware
select*from Employee
select*from Saleslnfo
--��Category�������
insert into Category values('ʳƷ��','�Ե�')
insert into Category values('�ľ���','ѧϰ')
insert into Category values('������Ʒ','ϴ��')
insert into Category values('�����','���')
insert into Category values('�߲���','�Ե�')


--��Ware�������
insert into Ware values('0001','����','1','2.50','3.40','500')
insert into Ware values('0002','�ɿ���','1','5','10','5000')
insert into Ware values('0003','��������','3','20.1','25','500')
insert into Ware values('0004','С����','4','70','140','500')
insert into Ware values('0005','�ײ�','5','2','3','100')
insert into Ware values('0006','���ǰ�','2','1','2','500')
insert into Ware values('0007','������','4','4','5','500')
insert into Ware values('0008','���ܲ�','5','1','2','500')
insert into Ware values('0009','ϴͷ��','3','50','60','500')
insert into Ware values('0010','��','1','40','50','50')

--��Employee�������
insert into Employee values('�����','111111','�ڣ�����ɽ������������')
insert into Employee values('�����','222222','Ů�����Ժ��ϣ��ȶ����')

--��Saleslnfo�������
Update Ware set Amount=Amount-1 where Wname='����'Insert into Saleslnfo values(0001,'2009-10-2',1,1001)Update Ware set Amount=Amount-1 where Wname='�ɿ���'Insert into Saleslnfo values(0002,'2009-10-2',20,1001)Update Ware set Amount=Amount-1 where Wname='��'Insert into Saleslnfo values(0010,'2008-10-2',10,1002)Update Ware set Amount=Amount-1 where Wname='ϴͷ��'Insert into Saleslnfo values(0009,'2015-10-2',5,1001)Update Ware set Amount=Amount-1 where Wname='���ǰ�'Insert into Saleslnfo values(0006,'2007-10-2',9,1002)


--��ѯ����
select Wid,Wname,SalesPrice-PurchasePrice as ���� from Ware order by ���� desc
--��ѯ������
select Wname,sum(SalesAmount) as ������ from Ware W,Saleslnfo S
where W.Wid = S.Wid group by Wname order by ������ desc

--ͳ��ÿ����Ʒ������������ʾ��Ʒ���������
select Cname,sum(SalesAmount) as ������
from Category C,Ware W,Saleslnfo S
where C.Cid = W.Cid and W.Wid = S.Wid group by Cname
--ͳ�Ƶ�Ŀǰ��ӯ���ܶ�
select Wname,sum()