
--�½����ݿ�
create database SuperMarkt 
on(
--ָ�����ݿ���
name = 'Student',
--ָ��·�����ļ���׺
filename = 'C:\SuperMarkt.mdf',
--ָ�����ݿ��ʼ����
size = 3MB,
--ָ�����ݿ��������
maxsize = 50MB,
--ָ�����ݿ��Զ���������
filegrowth = 1MB)

--�½����ݿ���־
log 
on(
--ָ�����ݿ���
name = 'SuperMarkt_log',
--ָ��·�����ļ���׺
filename = 'C:\SuperMarkt_log.ldf',
--ָ�����ݿ��ʼ����
size = 3MB,
--ָ�����ݿ��������
maxsize = 50MB,
--ָ�����ݿ��Զ���������
filegrowth = 20%)

--ɾ�����ݿ�
drop database SuperMarkt
