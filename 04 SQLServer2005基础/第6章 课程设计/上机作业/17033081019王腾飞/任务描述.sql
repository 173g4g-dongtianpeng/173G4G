 --��ѯÿ����Ʒ�ı�ţ����ƣ���Ʒ���󣬲����յ�Ʒ��������
select Wid,Wname,SalesPrice-PurchasePrice as ���� from ware order by ���� desc
--ͳ��ÿ����Ʒ������������ʾ��Ʒ���Ƽ������������������Ӹߵ�������
select w.Wname,sum(s.SalesAmount)as ������ 
from ware w,Saleslnfo s
where w.wid=s.wid 
group by wname order by ������ desc
--ͳ��ÿ����Ʒ������������ʾ��Ʒ���������
select Cname,sum(SalesAmount) as ������ from Category c,Ware w,Saleslnfo swhere c.Cid=w.Cid and w.Wid=s.Wid group by Cname--ͳ��ÿ����Ʒ��Ŀǰ��ӯ���ܶ�select wname,sum((SalesPrice-PurchasePrice)*SalesAmount) as ӯ���ܶ�from ware w,Saleslnfo swhere w.wid=s.wid group by wname