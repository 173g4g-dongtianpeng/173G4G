--д������
select*from Supermarket
select*from product
select*from employee
select*from sales

 
insert into Supermarket(cname,description)values('ʳƷ','Ҫ���')
insert into Supermarket(cname,description)values('����','�����ˮ')
insert into Supermarket(cname,description)values('���','��������')
insert into Supermarket(cname,description)values('����','�˿���װ')
insert into Supermarket(cname,description)values('ˮ��','����vc')

insert into product(wname,cid,purchaseprice,sales,amount) values('������',10002,3,4,10000)
insert into product(wname,cid,purchaseprice,sales,amount) values('��������',10001,1,2,5000)
insert into product(wname,cid,purchaseprice,sales,amount) values('����',10004,998,1024,500)
insert into product(wname,cid,purchaseprice,sales,amount) values('���ν��',10003,99,110,110)
insert into product(wname,cid,purchaseprice,sales,amount) values('��ǹ',10003,50,100,100)
insert into product(wname,cid,purchaseprice,sales,amount) values('ѩ��',10002,3,4,523)
insert into product(wname,cid,purchaseprice,sales,amount) values('����',10001,3,4,223)
insert into product(wname,cid,purchaseprice,sales,amount) values('����',10005,3,4,561)

insert into employee(ename,epassword,remark) values('����',123456,'')
insert into employee(ename,epassword,remark) values('����',123456,'')


insert into sales(wid,saelsdate,salesamount,eid) values(1,'2017-12-19',99,1001)
insert into sales(wid,saelsdate,salesamount,eid) values(3,'2017-12-19',16,1001)
insert into sales(wid,saelsdate,salesamount,eid) values(5,'2017-12-19',56,1001)
insert into sales(wid,saelsdate,salesamount,eid) values(6,'2017-12-19',33,1001)
insert into sales(wid,saelsdate,salesamount,eid) values(6,'2017-12-19',33,1001)
insert into sales(wid,saelsdate,salesamount,eid) values(6,'2017-01-01',33,1001)


update product set amount=amount-1 where wname='������'
insert into sales values(1,'2017-12-19',1,1001)








