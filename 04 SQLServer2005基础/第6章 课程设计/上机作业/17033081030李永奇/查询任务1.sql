--��ѯ��ʾÿ����Ʒ�ı�š������Լ����󣬰�����Ӹߵ��ͽ�������
select Wid as'���',Wname as '��Ʒ��',SalesPrice-PurchasePrice as '����'
from ware order by SalesPrice-PurchasePrice  desc
--ͳ��ÿ����Ʒ������������ʾ��Ʒ���Ƽ������������������Ӹߵ�������
select  a.Wname as '��Ʒ��',sum(b.SalesAmount) as '������' from ware a, SalesInfo b
where a.wid=b.Widint  group by a.Wname   order by sum(b.SalesAmount) desc
--
select Wname,sum(SalesAmount) as '������'from ware w,SalesInfo swhere w.Wid=s.Widint group by Wname order by sum(SalesAmount) desc
--ͳ��ÿ����Ʒ������������ʾ��Ʒ���������
select Cname as '���',sum(SalesAmount) as '������' from Category a,SalesInfo b, Ware c
where Widint=Wid and c.Cid=a.Cid group by Cname
--ͳ��ÿ����Ʒ��Ŀǰ��ӯ���ܶ�
select Wname as '��Ʒ',sum((SalesPrice-PurchasePrice)*SalesAmount) as 'ӯ���ܶ�'
from ware ,SalesInfo where Wid=Widint group by Wname  

--����Ա2������5��10����Ʒ
update ware set Amount=Amount-5 where wid=19
insert into SalesInfo values(19,'2017-12-20',5,1002)
--���������ܶ������Ա����
select Ename as '����Ա',sum((SalesPrice-PurchasePrice)*SalesAmount) as '�����ܶ�' from Employee,ware,Salesinfo 
where SalesInfo.Eid=Employee.Eid and Wid=Widint group by Ename  order by sum((SalesPrice-PurchasePrice)*SalesAmount) desc

--��ѯ��Ʒ������ǰ�����Ʒ������
select top 50 percent Wname as '��Ʒ', sum(SalesAmount) as '����' from ware,SalesInfo
where Wid=Widint group by Wname  order by sum(SalesAmount) desc
select top 5 Wname as '��Ʒ', sum(SalesAmount) as '����' from ware,SalesInfo
where Wid=Widint group by Wname  order by sum(SalesAmount) desc
--ͳ��2010�����������ǰ�����Ʒ������
select top 5 Wname as '��Ʒ', sum(SalesAmount) as '����' from ware,SalesInfo
where Wid=Widint group by Wname  order by sum(SalesAmount) desc