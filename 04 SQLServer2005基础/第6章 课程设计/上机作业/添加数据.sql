--
select*from Category
select*from Ware
select*from Employee
select*from SalesInfo

--��Ʒ�������
insert into Category values('����','���˻������')
insert into Category values('ϴ��ˮ','���˻��ѷ���')
insert into Category values('���','С������Դ��ԣ�')
insert into Category values('�ǹ�','�����ж���')
insert into Category values('����','���˾������ˣ�')
insert into Category values('ƤЬ','�㽭���ݽ���Ƥ�ﳧ�����ˣ�')

--��Ʒ��Ϣ����
insert into Ware values('��¶������','1','4.50','5.80','231')
insert into Ware values('��������','1','1.80','2.70','120')
insert into Ware values('��ݮ����','1','2.60','4.20','96')
insert into Ware values('����˿ϴ��ˮ','2','12.70','15.90','56')
insert into Ware values('Ʈ��','2','8.10','12.30','103')
insert into Ware values('����','2','19.40','26.90','130')
insert into Ware values('��˵�','3','20.00','22.22','150')
insert into Ware values('�ϵ�ͷ�ǹ�','4','1.00','11.11','666')
insert into Ware values('����������','5','1.58','2.02','222')
insert into Ware values('����Ƥ��Ь','6','60.00','66.66','888')

--Ա������
insert into Employee values('�ϵ�ͷ','666665','���˸��ָ߸���')
insert into Employee values('�����','666666','ɵ�Ŀɰ�')
insert into Employee values('��ͺͷ','666667','ͺͷ�����޵�')

--���ۼ�¼����
Update Ware set Amount=Amount-1 where Wname='��¶������'
insert into SalesInfo values(1,'2017-12-19',1,1001)
Update Ware set Amount=Amount-5 where Wname='����������'
insert into SalesInfo values(9,'2017-12-02',5,1002)
Update Ware set Amount=Amount-3 where Wname='�ϵ�ͷ�ǹ�'
insert into SalesInfo values(8,'2017-12-07',3,1001)
Update Ware set Amount=Amount-1 where Wname='����Ƥ��Ь'
insert into SalesInfo values(10,'2009-12-02',1,1002)
Update Ware set Amount=Amount-1 where Wname='��˵�'
insert into SalesInfo values(7,'2009-12-19',1,1003)


