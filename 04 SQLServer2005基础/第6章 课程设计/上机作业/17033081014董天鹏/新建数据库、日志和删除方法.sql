
--�½����ݿ�
create database Student 
on(
--ָ�����ݿ���
name = 'Student',
--ָ��·�����ļ���׺
filename = 'C:\Student.mdf',
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
name = 'Student_log',
--ָ��·�����ļ���׺
filename = 'C:\Student_log.ldf',
--ָ�����ݿ��ʼ����
size = 3MB,
--ָ�����ݿ��������
maxsize = 50MB,
--ָ�����ݿ��Զ���������
filegrowth = 20%)

--ɾ�����ݿ�
drop database Student
