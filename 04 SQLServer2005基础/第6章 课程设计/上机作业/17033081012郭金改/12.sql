--��ѯ
select wid,Wname,SalesPrice-purchaseprice  as ����  from ware order by ���� desc 
---��ѯ������
select w.Wname,sum(s.SalesAmount)as'������'
from Ware w,Salesinfo s
where w.wid = s.wid  group by Wname order by  '������'     desc

--ͳ��ÿ����Ʒ������������ʾ��Ʒ���������
select c.Cname,sum(s.SalesAmount) as  ������
from Category c, Salesinfo s,Ware w
where c.Cid=w.Cid and w.Wid=s.Wid   
group by Cname

--		ͳ��ÿ����Ʒ��Ŀǰ��ӯ���ܶ�
select Wname ,sum((SalesPrice-purchaseprice)*SalesAmount) as ӯ���ܶ�
from Ware w, Salesinfo s
where s.wid=w.wid group by Wname
--���������ܶ������Ա����
select Ename ,sum((SalesPrice-PurchasePrice)*SalesAmount)as �����ܶ�
from Employee e,Salesinfo s,Ware w
where e.Eid= s.Eid and s.Wid= w.Wid
group by   Ename  order by �����ܶ� desc
--��ѯ��Ʒ����������ǰ��������Ʒ���Ƽ�����
select top 5 Wname,sum(SalesAmount) as ����
from Ware w,Salesinfo s
where w.wid=s.wid group by Wname
order by ���� 
--ͳ��2017�����Ʒ����������ǰ��������Ʒ���Ƽ�����
select top 5 Wname,sum(SalesAmount) as ����
from Ware w,Salesinfo s
where w.wid=s.wid and s.Salesdate between '2017-01-01' and'2017-12-31'
group by Wname order by ���� desc
---ͳ��ÿ��Ա����2017�����������ʾԱ�����Ƽ���������
select Ename,sum(SalesAmount) as ����
from Ware w,Salesinfo s,Employee e
where s.Eid=e.Eid and s.Salesdate between '2017-01-01' and'2017-12-31'
group by Ename order by ���� desc
--ͳ��2017���������
select sum((SalesPrice-purchaseprice)*SalesAmount) from Salesinfo s ,Ware w
where s.Wid=w.Wid and s.Salesdate between '2017-01-01' and'2017-12-31'








