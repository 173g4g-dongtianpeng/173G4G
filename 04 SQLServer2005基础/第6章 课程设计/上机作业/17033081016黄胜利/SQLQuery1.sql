--�½����ݿ�
create database SuperMarket on(
--ָ�����ݿ���
name='SuperMarket',
--ָ��·���Լ���׺
filename='C:\SuperMarket.mdf',
--ָ�����ݿ��ʼ����
size=3MB,
--�������
maxsize=50MB,
--ָ�����ݿ��Զ���������
filegrowth=1MB
)
log on(
--ָ�����ݿ���
name='SuperMarketlog',
--ָ��·���Լ���׺
filename='C:\SuperMarket_log.mdf',
--ָ�����ݿ��ʼ����
size=3MB,
--�������
maxsize=50MB,
--ָ�����ݿ��Զ���������
filegrowth=10%
)
--ɾ�����ݿ�
drop database SuperMarket