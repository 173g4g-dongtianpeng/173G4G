--����
select wid, wname,salesprice-purchaseprice as '����'from Ware order by '����'desc  
--ͳ��ÿ����Ʒ������������ʾ��Ʒ���Ƽ������������������Ӹߵ�������
select W.wname,sum(S.SalesAmount)as'������'from ware W,salesinfo S where W.wid=S.wid group by wname order by '������' desc
--ͳ��ÿ����Ʒ������������ʾ��Ʒ���������
select c.cname,sum(s.SalesAmount)as'������' from Category c,ware w,SalesInfo s where w.cid=c.cid and s.wid=w.wid group by cname
--ͳ��ÿ����Ʒ��Ŀǰ��ӯ���ܶ�
select w.wname,sum((w.salesprice-w.purchaseprice)*s.SalesAmount)as'ӯ���ܶ�'from ware w,SalesInfo s where w.wid=s.wid group by wname
--����Ա��������5��1����Ʒ
update ware set Amount=Amount-5 where wid=1
insert into SalesInfo values(1,'2017-9-07',5,1002)
--���������ܶ������Ա����
select e.ename,sum((w.salesprice-w.purchaseprice)*s.SalesAmount)as'�����ܶ�'from Employee e,SalesInfo s ,ware w where e.eid=s.eid and w.wid=s.wid group by
e.ename order by '�����ܶ�'desc
--��ѯ��Ʒ����������ǰ��������Ʒ���Ƽ�����
select top 5 w.wname,sum(s.SalesAmount)as'����'
from ware w,SalesInfo s where w.wid=s.wid
group by  w.wname order by '����'desc
--ͳ��2010�����Ʒ����������ǰ5������Ʒ���Ƽ�����
select top 5 w.wname,sum(s.SalesAmount)as'����'
from ware w,SalesInfo s
where w.wid=s.wid and s.salesdate between '2017-03-07'and'2017-09-07'group by w.wname order by '����'desc
--ͳ��ÿ��Ա����2017�����������ʾԱ�����Ƽ���������
select e.Ename,sum(s.SalesAmount)as'����'
from Employee e,SalesInfo s where e.eid=s.eid and s.salesdate between'2017-01-01'and'2017-12-31'group by e.ename order by '����'desc
--2017���������
select sum((w.salesprice-w.purchaseprice)*s.SalesAmount)as'������'
from ware w,SalesInfo s
where w.wid=s.wid and s.salesdate between'2017-01-01'and'2017-12-31'