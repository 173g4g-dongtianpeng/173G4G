--���ݲ�ѯ һ
--��ѯÿ����Ʒ�ı�ţ����ƣ���Ʒ���󣬲�������������
--����
select Wid,Wname,SalesPrice-PurchasePrice AS ���� from Ware order by ���� desc
--����
select Wid,Wname,SalesPrice-PurchasePrice AS ���� from Ware order by ���� 
--ͳ��ÿ����Ʒ������������ʾ��Ʒ�����Լ������������������ظߵ�������
--��Ʒ������Ware�����������Saleslnfo���
--group by   ����
select w.Wname,sum(s.SalesAmount) AS ������
 from ware  w ,SalesInfo s       
where  w.Wid=s.Wid group by Wname order by Wname desc

select w.Wname, sum(s.SalesAmount) as ������
from Ware w, SalesInfo s
where w.wid=s.wid group by wname order  by wname desc
--ͳ��ÿ����Ʒ������������ʾ��Ʒ���������
--�Ӹߵ�������
select w.Cname, sum(s.SalesAmount) as ������
from  Category w, Ware a, SalesInfo s
where w.Cid=a.Wid  and a.Wid=s.Wid group by Cname  
order by sum(s.SalesAmount) desc
--ͳ��ÿ����Ʒ��ӯ���
--����Ware �� SalesInfo ��
--���еõ���Ʒ���ơ����ۡ��ۼۼ�����������
--�����ÿ����¼�����۶�Ӧ��ʾΪ��-- SalesPrice-PurchasePrice)*SalesAmount
select Wname,sum((SalesPrice-PurchasePrice)*SalesAmount) as ӯ����
from Ware w,SalesInfo s
where w.wid=s.wid group by wname  order by wname
--����Ա1002����5��1����Ʒ
insert into SalesInfo values('1','2016-7-6','5','1002')
Update Ware set Amount=Amount-5 where wid='1'
--���������ܶ������Ա����
select e.Ename,sum((w.SalesPrice-w.PurchasePrice)*s.SalesAmount) as �����ܶ�
from Employee e,  SalesInfo s,Ware w
where  e.Eid=s.Wid and w.Wid =s.Wid
group by e.Ename  order by �����ܶ�   desc
--��ѯ��Ʒ��������ǰ��������Ʒ���Ƽ�����
--top  ȡǰ��
--select top 5
select  w.Wname,sum(s.SalesAmount)  ����
from Ware w, SalesInfo s
where w.Wid=s.Wid group by w.Wname order by ���� desc
--ͳ��2017��-05-06��2017-09-09��Ʒ����������ǰ��������Ʒ�����Լ�����
select w.Wname,sum(s.SalesAmount) ����
from Ware w,SalesInfo s
where w.Wid=s.Wid 
and s.SalesDate between '2017-05-06'and'2017-09-09'
group by w.Wname order by ���� desc
--������
select Wname,SalesAmount
from Ware w,SalesInfo s
where w.Wid=s.Wid and s.SalesDate between'2017-05-06'and'2017-09-09'
--ͳ��ÿ��Ա����2010�������,��ʾԱ�������Լ���������
--����
select Ename,SalesAmount
from Employee e,SalesInfo s
where e.Eid=s.Eid
--�ܹ�����
select e.Ename,sum(s.SalesAmount)  as ����
from Employee e,SalesInfo s
where e.Eid=s.Eid group by e.Ename order by ���� desc
--��ʱ�������
select e.Ename,sum(s.SalesAmount)  as ����
from Employee e,SalesInfo s
where e.Eid=s.Eid 
and s.SalesDate between
'2017-05-06'and'2017-09-09'group by e.Ename order by ���� desc
--ͳ��2010���������
select sum((SalesPrice-PurchasePrice)*SalesAmount) as ӯ����
from ware w,SalesInfo s
where w.wid=s.Wid and s.SalesAmount between'2017-01-01'and'2017-12-31'






