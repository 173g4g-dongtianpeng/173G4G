--��һ����
insert into Category values('�ҵ���','')
insert into Category values('ʳƷ��','')
insert into Category values('ˮ����','')
insert into Category values('��Ʒ��','')
insert into Category values('����Ʒ��','')

--�ڶ�����
insert into Ware values('10010','�����ӱ���','1','5000','6998','50')
insert into Ware values('10011','TCL�Ƶ���','1','4000','5998','50')
insert into Ware values('10012','ipad witch','1','8000','1200','50')
insert into Ware values('10013','��˾��','2','0.8','1','1000')
insert into Ware values('10014','С����','2','0.3','0.5','1000')
insert into Ware values('10015','ϲ֮��','2','5','8','500')
insert into Ware values('10016','����','3','70','120','10')
insert into Ware values('10017','⨺���','3','2','3','50')
insert into Ware values('10018','�㽶','3','1','2','60')
insert into Ware values('10019','ˮ��C100','4','3.5','5','100')
insert into Ware values('10020','��֮��','4','4','5','100')
insert into Ware values('10021','���','4','3.5','4','100')
insert into Ware values('10022','����˿','5','20','35','50')
insert into Ware values('10023','���෻��Ĥ','5','10','25','500')
insert into Ware values('10024','ŷ������ʿϴ����','5','25','40','100')

--��������
insert into Employee values('������','435464','')
insert into Employee values('���ٲ�','142536','')

--���ĸ���
insert into SalesInfo values('10024','2017-11-11','6','1001')
update ware set Amount = Amount - 6 where Wname = 'ŷ������ʿϴ����'
insert into SalesInfo values('10012','2016-11-11','1','1002')
update ware set Amount = Amount - 1 where Wname = 'ipad witch'
insert into SalesInfo values('10023','2015-12-12','60','1001')
update ware set Amount = Amount - 60 where Wname = '���෻��Ĥ'
insert into SalesInfo values('10011','2017-12-12','1','1002')
update ware set Amount = Amount - 1 where Wname = 'TCL�Ƶ���'
insert into SalesInfo values('10010','2016-5-12','1','1001')
update ware set Amount = Amount - 1 where Wname = '�����ӱ���'
insert into SalesInfo values('10016','2017-2-13','5','1001')
update ware set Amount = Amount - 5 where Wname = '����'
insert into SalesInfo values('10017','2017-11-29','30','1002')
update ware set Amount = Amount - 30 where Wname = '⨺���'
insert into SalesInfo values('10018','2017-12-25','5','1001')
update ware set Amount = Amount - 5 where Wname = '�㽶'
insert into SalesInfo values('10021','2017-6-13','1','1001')
update ware set Amount = Amount - 1 where Wname = '���'
insert into SalesInfo values('10022','2017-7-7','3','1002')
update ware set Amount = Amount - 3 where Wname = '����˿'
select * from Category
select * from Ware
select * from Employee
select * from SalesInfo