--�����Ʒ���
insert into Category values('ʳƷ','')
insert into Category values('����','')
insert into Category values('����Ʒ','')
--�����Ʒ��Ϣ
insert into ware values('��������',1,9,14,50)
insert into ware values('�����յ�',2,1200,2400,30)
insert into ware values('Ʈ��',3,1000,1800,70)
insert into ware values('����',1,2,6,102)
insert into ware values('����',3,8,12,50)
insert into ware values('�㽶',1,4,8,50)
insert into ware values('���¯',2,120,318,50)
insert into ware values('ϴ�»�',2,500,1000,50)
insert into ware values('����',2,800,1600,50)
insert into ware values('ƻ��',1,6,10,50)

--�������Ա��Ϣ
insert into Employee values('tom','1111111','')
insert into Employee values('jack','2222222','')
--������ۼ�¼��Ϣ
Update Ware set Amount=Amount-1 where Wname='��������'
insert into SalesInfo values(1,'2010-03-09',1,1001)
Update Ware set Amount=Amount-1 where Wname='�����յ�'
insert into SalesInfo values(2,'2010-11-29',1,1002)
Update Ware set Amount=Amount-1 where Wname='Ʈ��'
insert into SalesInfo values(3,'2010-05-20',1,1002)
Update Ware set Amount=Amount-1 where Wname='����'
insert into SalesInfo values(4,'2010-04-12',1,1001)
Update Ware set Amount=Amount-1 where Wname='����'
insert into SalesInfo values(5,'2010-07-18',1,1001)
Update Ware set Amount=Amount-1 where Wname='��������'
insert into SalesInfo values(1,'2010-10-08',1,1002)
Update Ware set Amount=Amount-1 where Wname='Ʈ��'
insert into SalesInfo values(3,'2010-12-09',1,1002)
