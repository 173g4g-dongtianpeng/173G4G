--��ѯ��Ʒ��ţ����ƣ���Ʒ�����󣬲��Ե�Ʒ��������
select wid ��Ʒ���,Wname ���� , SalesPrice-PurchasePrice ���� 
from Ware order by ���� desc
--ͳ��ÿ����Ʒ������������ʾ��Ʒ���ƺ������� ���Ӹߵ�������
select w.Wname ��Ʒ����,
sum(s.SalesAmount) as ������ from ware w,SalesInfo s
where w.wid=s.wid group by wname order by ������ desc
--ͳ��ÿ����Ʒ��������,��ʾ��Ʒ���������
select c.cname ���, sum(s.SalesAmount) as ������
from Category c,ware w,SalesInfo s
where c.cid=w.cid and w.wid = s.wid group by cname
--ͳ��ÿ����Ʒ��Ŀǰ��ӯ���ܶ�
select w.wname ��Ʒ����,sum((w.SalesPrice-w.PurchasePrice)*salesamount) 
as ӯ���ܶ� from ware w , SalesInfo s
where w.wid=s.wid group by Wname
--����Ա2������5��1����Ʒ
update ware set amount = amount-5 where wid='10011'
insert into SalesInfo values ('10011','2016-11-11','5','1002')
--���������ܶ������Ա����
select e.ename ����Ա����,sum((w.SalesPrice-w.PurchasePrice)*salesamount) 
as �����ܶ� from  Employee e ,SalesInfo s,ware w 
where e.eid=s.eid and w.wid= s.wid
group by e.ename order by �����ܶ� desc
--��ѯ��Ʒ����������ǰ��������Ʒ���Ƽ�����
select top 5 w.wname ��Ʒ����,sum(s.SalesAmount) ����
from ware w,SalesInfo s 
where w.wid=s.wid
group by w.wname order by ���� desc
--ͳ��2017�����Ʒ��������ǰ��������Ʒ���Ƽ�����'
select top 5 w.wname ��Ʒ����,sum(s.SalesAmount) ����
from ware w,SalesInfo s 
where w.wid=s.wid 
and s.salesdate between '2017-1-1' and '2017-12-31'
group by w.wname order by ���� desc
--ͳ��2017�� ����Ʒ����������ǰ�����Ʒ���Ƽ�����
select e.ename Ա������,sum(s.SalesAmount) ����
from Employee e,SalesInfo s
where e.eid=s.eid
and s.salesdate between '2017-1-1' and '2017-12-31'
group by e.ename order by ���� desc
--ͳ��2017���������
select sum((w.SalesPrice-w.PurchasePrice)*salesamount) ������
from ware w,SalesInfo s 
where w.wid=s.wid and s.salesdate between '2017-1-1' and '2017-12-31'
select * from Category
select * from Ware
select * from Employee
select * from SalesInfo