--��ѯ��Ʒ���
select*from Category
--���
insert into Category values('ʳƷ','�ԵĶ���')
insert into Category values('����','�ȵĶ���')
insert into Category values('������Ʒ','�ճ���Ʒ')
insert into Category values('����','ϴ����Ʒ')
insert into Category values('����','��С�ҵ�')
insert into Category values('��Ʒ','��������')

--��ѯ��Ʒ��Ϣ��
  select*from   Ware 
--���
insert into Ware values(7,'��������',1,2,3,100)  
insert into Ware values(8,'�ɿ���',1,9,13,90) 
insert into Ware values(9,'������',1,26,35,20) 
insert into Ware values(10,'����԰',1,40,54,15) 
insert into Ware values(11,'���¿���',2,3,5,200)  
insert into Ware values(12,'Ӫ������',2,3,5,100) 
insert into Ware values(13,'�Ӷ౦',2,3,6,150) 
insert into Ware values(14,'����',2,43,60,20)
insert into Ware values(16,'��������',3,6,15,120)
insert into Ware values(15,'����ϴͷ��',3,12,25,50)
insert into Ware values(17,'Ʈ��',3,8,12,100)  
insert into Ware values(18,'�緹��',4,120,188,10) 
insert into Ware values(19,'��ˮ��',4,29,68,20)
insert into Ware values(20,'�����',4,36,73,30)                                      
--��ѯԱ��
select*from Employee
--��� 
insert into Employee values('����','1234567','����������')
insert into Employee values('����','1234567','��ǰ����Ь��')
--��ѯ ���ۼ�¼
select*from SalesInfo
--���
Update Ware set Amount=Amount-1 where Wname='��������'Insert into SalesInfo values(7,'2009-10-2',1,1002)Update Ware set Amount=Amount-1 where Wname='�ɿ���'Insert into SalesInfo values(8,'2009-10-11',1,1001)Update Ware set Amount=Amount-1 where Wname='Ӫ������'Insert into SalesInfo values(12,'2009-10-11',1,1001)Update Ware set Amount=Amount-1 where Wname='�����'Insert into SalesInfo values(20,'2009-10-11',1,1001)
--������ݸ�ʽ
insert into ������������values�����ݣ�
insert into ���� values�����ݣ�
--���۸�ʽ
Update ���� set ����=����-1 where ����Insert into ���� values(����Ϣ)
