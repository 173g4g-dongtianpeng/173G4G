--1.��ѯ����,��Ʒ����=�ۼ�-����
select Wid,Wname,SalesPrice-PurchasePrice as ����
 from Ware order by ���� desc
--2.��ѯ������
select w.wname,sum(s.SalesAmount) as ������ from Ware w,SalesInfo s where w.Wid=s.Wid group by Wname order by ������ desc
--3.�����漰��types\ware\salesinfo
select c.Cname,sum(s.SalesAmount)as ������ from Category c,Ware w,SalesInfo s where c.Cid=w.Cid and w.Wid=s.Wid group by Cname
--4.ÿ����Ʒ��Ŀǰ��ӯ���ܶ�
select w.Wname,sum((SalesPrice-PurchasePrice)*s.SalesAmount)as ӯ���ܶ� from Ware w,SalesInfo s where w.Wid=s.Wid group by Wname
--5.����Ա1001������5��1����Ʒ(��������)
update Ware set Amaount=Amaount -5 where Wid='40001'insert into SalesInfo(Wid,Eid,SalesDate,SalesAmount)values('40001','1001','2016-2-27','5')
--6.�������ܶ������Ա����
select e.Ename,sum((SalesPrice-PurchasePrice)*s.SalesAmount) as
�����ܶ� from Employee e ,SalesInfo s,Ware w where e.Eid=s.Eid and
w.Wid=s.Wid group by e.Ename order by �����ܶ� desc
--7.��ѯ����ǰ��������Ʒ���Ƽ�����
select top 3 w.Wname,sum(s.SalesAmount)���� from Ware w,SalesInfo s where w.Wid=s.Wid group by w.Wname order by ����desc
--8.ͳ��2016���ǰ��������Ʒ���Ƽ�����
select top 2 w.Wname,sum(SalesAmount)���� from Ware w,
SalesInfo s where w.Wid=s.Wid and s.SalesDate between '2016-1-1'
and '2016-12-31' group by w.Wname order by ���� desc 
--9.ͳ��ÿ��Ա����2016�����������ʾԱ������
select e.Ename,sum(s.SalesAmount)���� from Employee e,SalesInfo
s where e.Eid=s.Eid and s.SalesDate between '2016-1-1'and'2016-12-31'group by e.Ename
order by ���� desc
--10.ͳ��2016���������
select sum((w.SalesPrice-w.PurchasePrice)*s.SalesAmount) from
Ware w,SalesInfo s where w.Wid=s.Wid and s.SalesDate between '2016-1-1'and '2016-12-31'