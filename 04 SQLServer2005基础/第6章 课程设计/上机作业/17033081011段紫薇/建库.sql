--�½����ݿ�

create database SuperMarket
on(
--����
name='SuperMarket',
--�ļ�����·��
filename='C:\SuperMarket.mdf',
--��ʼ����
size=3MB,
--�������
maxsize=50MB,
--�Զ�����ֵ
filegrowth=1MB
)

--�½����ݿ���־

log on(
--����
name='SuperMarket_log',
--�ļ�����·��
filename='C:\SuperMarket_log.ldf',
--��ʼ����
size=3MB,
--�������
maxsize=50MB,
--�Զ�����ֵ
filegrowth=10%
)

--ɾ�����ݿ�
drop database SuperMarket