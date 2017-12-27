--�鿴���ݱ�
select * from Category
 select*from Ware
select * from  Employee
select  *from  SalesInfo

--�½����ݱ�
 create  table  Category
(  --�Զ�����,��1��ʼ
  Cid  int    primary  key  identity(1,1),
  --��������,Ϊ��Ϊ��
  Cname  nvarchar (30) not null  unique,
--�������   ����Ϊ��
  Description  nvarchar  (500)  null,
)
--�½����ݱ�
create  table  Ware(
-- Wid Ϊ�������Զ�����
  Wid  int  primary  key   identity(1,1),
--Wname  �������Ҳ����ظ�
    Wname  nvarchar  (10)  not  null  unique,
--Cid ��Ʒ���,���,����
Cid  int  not  null   foreign key  references  Category(Cid),
--PurchasePrice��Ʒ���۱������
 PurchasePrice  smallint  check(len(PurchasePrice)>0),
--SalesPrice��Ʒ�ۼ۱������0
SalesPrice  smallint  check(len(SalesPrice)>0),
--Amount��Ʒ������������0
 Amount   smallint   check  (len(Amount)>0),
)

   --�½����ݱ�
   create  table  Employee(
  --Eid�Զ���������1001��ʼ  ����
 Eid  int primary  key  identity(1001,1),
  --EnameԱ������  ����
 Ename  nvarchar   (10) not  null,
  --Epassword  Ա������   ������6λ
  Epassword   nvarchar (10) not null  check(len(Epassword)>6),
  -- Remark  ��ע  �ɲ���
   Remark   nvarchar  null,

)
 --�½����ݱ�
create  table   SalesInfo(
 --Sid   ����,�Զ�����  ��1��ʼ
  Sid   int  primary  key  identity (1,1),
 --Wid  ���  ����
 Wid  int  not  null   foreign key  references  Ware(Wid),
--SalesDate  ������Ʒʱ��,����
SalesDate  datetime  not  null,
--SalesAmount  ������Ʒ����,�����ұ������0
SalesAmount   int  not   null  check (len(SalesAmount)>0),
--Eid   ���   ����
  Eid  int  not  null   foreign  key  references  Employee(Eid),
)
  --ɾ�����ݱ�
  drop  table   