--��ѯ���� 
select*from Category
select*from Employee
select*from Saleslnfo
select*from Ware

insert into Category values('ʳƷ��','�Ե�')
insert into Category values('������Ʒ��','�õ�')
insert into Category values('�Ҿ���','����')
insert into Category values('������','�ֵ�')
insert into Category values('�����','���')

insert into	Ware values('���',1,5,10,200)
insert into	Ware values('����',1,5,10,200)
insert into	Ware values('����',4,5,10,200)
insert into	Ware values('�㳦',1,5,10,200)
insert into	Ware values('����',1,5,10,200)
insert into	Ware values('�㽶',1,5,10,200)
insert into	Ware values('ƻ��',1,5,10,200)
insert into	Ware values('��',1,4,10,200)
insert into	Ware values('�ɿ���',1,5,10,200)
insert into	Ware values('����',1,5,10,200)

insert into Employee values('���Ľ�',12012030,'�˺�')
insert into Employee values('���Ƿ�',11020030,'����')



--������ۼ�¼��������Ϣ
--ͬʱ�޸Ŀ������
Update Ware set Amount=Amount-1 where Wname='���'Insert into Saleslnfo values(10010,'2009-10-2',1,1001)Update Ware set Amount=Amount-2 where Wname='����'Insert into Saleslnfo values(10011,'2009-11-2',2,1002)