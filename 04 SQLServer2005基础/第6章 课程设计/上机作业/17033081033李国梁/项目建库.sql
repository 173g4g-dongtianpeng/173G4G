--�½����ݿ�
create database SuperMarket
on(
--���ݿ���
name='SuperMarket',
--·��
filename='D:\SuperMarket.mdf',
--���ݿ��ʼֵ
size=3MB,
--���ݿ��������
maxsize=500MB,
--���ݿ��Զ���������
filegrowth=1MB
)
log on
(--���ݿ���
name='SuperMarket_log',
--·��
filename='D:\SuperMarket_log.lmf',
--���ݿ��ʼֵ
size=3MB,
--���ݿ��������
maxsize=500MB,
--ָ���Զ�����ֵ
filegrowth= 10%
)
drop database SuperMarket