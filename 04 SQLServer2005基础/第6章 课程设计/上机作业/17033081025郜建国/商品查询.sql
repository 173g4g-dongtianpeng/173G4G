--�鿴��
select *from Category
select *from Ware
select *from Employee
select *from SalesInfo



--��ѯÿ����Ʒ�ı�š����ơ���Ʒ���󣬲����յ�Ʒ��������
select wid,wname,SalesPrice-PurchasePrice 
as '����'from ware order by '����' desc
--ͳ��ÿ����Ʒ������������ʾ��Ʒ���Ƽ������������������Ӹߵ�������
select w.wname,sum(s.SalesAmount) as '������'from ware w,Salesinfo s where w.wid=s.wid
group by wname order by '������' desc
--ͳ��ÿ����Ʒ������������ʾ��Ʒ���������
select c.Cname,sum(s.SalesAmount) as'������' from category c,ware w,salesinfo s where
 c.cid=w.cid and w.wid=s.wid group by cname
--ͳ��ÿ����Ʒ��Ŀǰ��ӯ���ܶ�
select w.wname,sum((w.SalesPrice-w.PurchasePrice)*s.SalesAmount)as'ӯ���ܶ�'
from ware w,salesinfo s where w.wid=s.wid group by wname
--����Ա2������5��1����Ʒ
update ware set Amount=Amount-5 where wid=1
insert into salesinfo values(1,'2011-2-12',5,1002)
--���������ܶ������Ա����
select e.ename,sum((w.SalesPrice-w.PurchasePrice)*s.SalesAmount)as '�����ܶ�'
from Employee e,ware w,salesinfo s where e.eid=s.eid and w.wid=s.wid
group by ename order by '�����ܶ�' desc
--��ѯ��Ʒ����������ǰ��������Ʒ���Ƽ�������
select top 5 w.wname,sum(s.SalesAmount) as'������' from ware w,salesinfo s 
where w.wid=s.wid group by wname order by'������' desc
--ͳ��2011�����Ʒ����������ǰ��������Ʒ���Ƽ�����
select top 5 w.wname,sum(s.SalesAmount) as'������' from ware w,salesinfo s 
where w.wid=s.wid and salesdate between'2011-1-1'and '2011-12-31' 
group by wname order by'������' desc
--ͳ��ÿ��Ա����2011�����������ʾԱ�����Ƽ���������
select e.ename,sum(s.SalesAmount) as'��������' from salesinfo s,Employee e 
where e.eid=s.eid and s.salesdate between'2011-1-1'and '2011-12-31' 
group by e.ename order by '��������' desc
--ͳ��2011���������
select sum((w.SalesPrice-w.PurchasePrice)*s.SalesAmount)as'ӯ���ܶ�'
from ware w,salesinfo s where w.wid=s.wid and s.salesdate between'2011-1-1'and '2011-12-31' 




