--��������
insert into Students(Name,Adress)values('����','�����')
insert into Students(Name,Adress)values('����',null)
--�޸�ȫ������
update Students set adress = '�廪it'
--�޸��ƶ�����
update Students set adress = '���������'where Code = 1
update Students set adress = '���������'where Code = 1 and name = '����'
--ɾ������
delete from Students where Code = 1
--ɾ������
delete from Students
truncate table Students
--��ѯ����
select*from Students