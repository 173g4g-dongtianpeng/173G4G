
--��ѯÿ����Ʒ�ı�š����ơ���Ʒ���󣬲����յ�Ʒ��������
select wid,Wname,SalesPrice-PurchasePrice as ���� from Ware order by ���� desc

--ͳ��ÿ����Ʒ������������ʾ��Ʒ�����Ƽ����������������������Ӹߵ�������
select w.Wname,sum(s.SalesAmount) as ������ from Ware w,SalesInfo s
where w.wid=s.wid group by Wname order by ������ desc

---ͳ��ÿ����Ʒ������������ʾ��Ʒ�����Ƽ�������
select t.Cname,sum(s.SalesAmount) as ������ from Category t,Ware w,SalesInfo s
where t.Cid =w.Cid and w.wid=s.Wid group by Cname

--ͳ��ÿ����Ʒ��Ŀǰ��ӯ���ܶ�
select w.Wname,sum((w.SalesPrice-w.PurchasePrice)*s.SalesAmount) as ӯ���ܶ�
from Ware w,SalesInfo s where w.Wid=s.Sid group by Wname

--����Ա2������5��1����Ʒ
update Ware set Amount=Amount-5 where Wid=1
insert into SalesInfo values(1,'2012-06-30',5,1001)

select*from SalesInfo

--���������ܶ������Ա����
select e.Ename,sum((w.SalesPrice-w.PurchasePrice)*s.SalesAmount) as �����ܶ�
from Employee e, Ware w,SalesInfo s where e.Eid=s.Eid and w.Wid=s.Sid
group by e.Ename order by �����ܶ� desc

--��ѯ��Ʒ����������ǰ��������Ʒ���Ƽ�����
select top 5 w.Wname,sum(s.SalesAmount) ���� from Ware w,SalesInfo s where w.Wid=s.Wid
group by w.Wname order by ���� desc

--ͳ��2017�����Ʒ����������ǰ��������Ʒ���Ƽ�����
select top 5 w.Wname,sum(s.SalesAmount) ���� from Ware w,SalesInfo s where w.Wid=s.Wid and s.SalesDate between'2017-01-01'and'2017-12-31'
group by w.Wname order by ���� desc

--ͳ��ÿ��Ա����2017�����������ʾԱ�����Ƽ�������
select top 5 e.Ename,sum(s.SalesAmount) ���� from Employee e, Ware w,SalesInfo s where e.Eid=s.Eid and s.SalesDate between'2017-01-01'and'2017-12-31'
group by e.Ename order by ���� desc

--ͳ��2017���������
select sum((w.SalesPrice-w.PurchasePrice)*s.SalesAmount) from Ware w,SalesInfo s where w.Wid=s.Wid and s.SalesDate between'2017-01-01'and'2017-12-31'

