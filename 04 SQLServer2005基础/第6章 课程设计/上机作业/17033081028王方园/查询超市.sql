 --��ѯ��ʾÿ����Ʒ�ı�š������Լ����󣬰���SalesInfo��Ӹߵ��ͽ�������
select wid,wname,SalesPrice-PurchasePrice as ���� from ware order by SalesPrice-PurchasePrice desc
--ͳ��ÿ����Ʒ������������ʾ��Ʒ���Ƽ������������������Ӹߵ�������
select wname,sum(SalesAmount)as ������ from ware w, SalesInfo s 
where w.wid=s.wid group by wname order by sum(SalesAmount) desc
--ͳ��ÿ����Ʒ������������ʾ��Ʒ���������
select cname,sum(SalesAmount)as ������ from Category c,ware w,SalesInfo s
where c.cid=w.cid and w.wid=s.wid group by cname
--ͳ��ÿ����Ʒ��Ŀǰ��ӯ���ܶ�
select wname,sum((SalesPrice-PurchasePrice)*SalesAmount)as ����
from ware w,SalesInfo s
where w.wid=s.wid group by wname
--����Ա1002������5��34945����Ʒ
update ware set Amount=Amount-5 where wid=34945
insert into SalesInfo values('34945','2017-12-20','5','1002')
--���������ܶ������Ա����
select ename,sum((SalesPrice-PurchasePrice)*SalesAmount)as �����ܶ�
from Employee e,SalesInfo s,ware w
where e.eid=s.eid and w.wid=s.wid
group by ename order by sum((SalesPrice-PurchasePrice)*SalesAmount)
--��ѯ��Ʒ������������ǰ��������Ʒ���Ƽ�������
select top 5 wname,sum(SalesAmount)as ������
from ware w,SalesInfo s
where w.wid=s.wid
group by wname order by sum(SalesAmount)desc
--ͳ��2017-12-15~2017-12-18������������ǰ�����Ʒ���Ƽ���������
select top 5 wname,sum(SalesAmount)as ������
from ware w,SalesInfo s
where w.wid=s.wid and s.SalesDate between'2017-12-15'and'2017-12-18'
group by wname order by sum(SalesAmount)desc
--ͳ��ÿ��Ա������2017��������,��ʾԱ�����ƺ���������
select ename,sum(SalesAmount)as ������
from Employee e,SalesInfo s
where e.eid=s.eid and s.SalesDate between'2017-01-01'and'2017-12-31'
group by ename order by ������
--ͳ��2017�������
select sum((SalesPrice-PurchasePrice)*SalesAmount)as ������
from ware w,SalesInfo s
where w.wid=s.wid and SalesDate between'2017-01-01'and'2017-12-31'