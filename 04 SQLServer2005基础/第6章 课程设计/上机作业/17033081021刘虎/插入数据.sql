--�鿴����
select *from Category



--������Ʒ���
--��ʳ
insert into Category(Cname,Description)
values('��ʳ','')
--ˮ��
insert into Category(Cname,Description)
values('ˮ��','�óԣ����')
--����Ʒ
insert into Category(Cname,Description)
values('����Ʒ','')
--����
insert into Category(Cname,Description)
values('����','')
--�ֻ�
insert into Category(Cname,Description)
values('�ֻ�','')




select *from Ware
--������Ʒ��Ϣ
insert into Ware values('ţ���',1,2,5,100)
insert into Ware values('��צ',1,1,2,100)
insert into Ware values('ƻ��',2,2,4,100)
insert into Ware values('��',2,1,3,100)
insert into Ware values('��������',3,10,15,100)
insert into Ware values('��ˢ',3,2,3,100)
insert into Ware values('����',4,3000,4000,100)
insert into Ware values('�յ�',4,4000,5000,100)
insert into Ware values('��Ϊ',5,1000,1500,100)
insert into Ware values('vivo',5,1000,2000,100)




select *from Employee
--����Ա��
insert into Employee values('����',1234567,'Ա��')
insert into Employee values('����',2234567,'Ա��')

select *from SalesInfo
--�������ۼ�¼��
update Ware set Amount=Amount-5 where Wname='ţ���'
insert into SalesInfo values(1,'2011-1-12',5,1001)
update Ware set Amount=Amount-20 where Wname='ƻ��'
insert into SalesInfo values(3,'2011-1-12',20,1002)
update Ware set Amount=Amount-10 where Wname='��������'
insert into SalesInfo values(5,'2011-1-13',10,1002)
update Ware set Amount=Amount-10 where Wname='����'
insert into SalesInfo values(7,'2011-1-13',10,1001)
update Ware set Amount=Amount-30 where Wname='��Ϊ'
insert into SalesInfo values(9,'2011-1-14',30,1002)