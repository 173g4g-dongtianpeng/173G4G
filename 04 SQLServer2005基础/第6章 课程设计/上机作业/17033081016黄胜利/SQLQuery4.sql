--��ѯ��Ʒ����
select*from Category
--��ѯ��Ʒ��Ϣ��
select*from ware
--��ѯԱ����
select*from Employee
--��ѯ���ۼ�¼��
select*from SalesInfo
--��ѯ��ʾÿ����Ʒ�ı�š������Լ����󣬰�����Ӹߵ��ͽ�������
select wid,wname,SalesPrice-PurchasePrice as ���� from Ware order by ���� desc
--ͳ��ÿ����Ʒ������������ʾ��Ʒ���Ƽ������������������Ӹߵ�������
select Wname,sum(SalesAmount)as ������ from Ware a,SalesInfo b where a.wid=b.wid
group by Wname order by sum(SalesAmount) desc
--ͳ��ÿ����Ʒ������������ʾ��Ʒ���������
--�������������漰��Category��Ware��SalesInfo�������������ٷ���ͳ��
select Cname,sum(SalesAmount) as ������ from Category c,Ware w,SalesInfo swhere c.Cid=w.Cid and w.Wid=s.Wid group by Cname order by sum(salesamount) desc
--ͳ��ÿ����Ʒ��Ŀǰ��ӯ���ܶ�--������������Ware��SalesInfo�����еõ���Ʒ���ơ����ۡ��ۼۼ����������������ÿ����¼�����۶�Ӧ��ʾΪ��select Wname,sum((SalesPrice-PurchasePrice)*SalesAmount) as ӯ���ܶ�from Ware w,SalesInfo swhere w.Wid=s.Wid group by Wname