Select  *from Employee
Select  *from Category
Select  *from Ware
select* from SalesInfo
--�������
--��Ʒ���
insert  into  Category(Cname,Description)  values  ('������','�ǳ���')
insert  into  Category(Cname,Description)  values  ('ʳƷ��','�ǳ���')
insert  into  Category(Cname,Description)  values  ('������','�ǳ���')
insert  into  Category(Cname,Description)  values  ('ϴ����','�ǳ���')
insert  into  Category(Cname,Description)  values  ('��ʳ��','�ǳ���')
--��Ʒ���
insert  into Ware  values('�ɿڿ���','1','2','3','100')
insert  into Ware  values('��Ƭ','1','3','4','50')
insert  into Ware  values('Nike','2','100','500','30')
insert  into Ware  values('������ϴ��ˮ','3','50','80','50')
insert  into Ware  values('��������','2','4','8','35')
insert  into Ware  values('�̲�','5','1','3','10')
insert  into Ware  values('oppo�ֻ�','5','2000','2900','10')
insert  into Ware  values('�Ϻü�','2','2','3','75')
insert  into Ware  values('����ֽ','1','10','13','21')
insert  into Ware  values('����','3','18','81','17')

--���Ա����
insert   into  Employee(Ename,Epassword,Remark) values ('��ʤ��','huangsheng','')
insert   into  Employee(Ename,Epassword,Remark) values ('���ٲ�','zhangshao','')
insert   into  Employee(Ename,Epassword,Remark) values ('�����','mahuizheng','')

--������Ʒ
insert  into  SalesInfo(Wid,SalesDate,SalesAmount,Eid) values('1','2017-12-19','2','1002')
insert  into  SalesInfo(Wid,SalesDate,SalesAmount,Eid) values('4','2017-12-18','1','1003')
insert  into  SalesInfo(Wid,SalesDate,SalesAmount,Eid) values('8','2017-12-17','5','1001')
insert  into  SalesInfo(Wid,SalesDate,SalesAmount,Eid) values('10','2017-12-16','4','1003')
insert  into  SalesInfo(Wid,SalesDate,SalesAmount,Eid) values('7','2017-12-15','7','1002')


