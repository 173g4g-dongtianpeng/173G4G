--�½����ݿ�
create database SuperMarket on
(
--���ݿ���
name = 'SuperMarket',
--���ݿ�洢λ��
filename = 'C:\SuperMarket.mdf',
--���ݿ��ʼ��С
size = 3MB,
--�����
maxsize = 5000MB,
--������
filegrowth = 1MB
)
log on(
--��־��
name = 'SuperMarket_log',
--��־�洢λ��
filename = 'C:\SuperMarket_log.ldf',
--��ʼ��С
size = 2MB,
--�����
maxsize = 5000MB,
--����ֵ
filegrowth = 10%
)
--ɾ��
drop database SuperMarket