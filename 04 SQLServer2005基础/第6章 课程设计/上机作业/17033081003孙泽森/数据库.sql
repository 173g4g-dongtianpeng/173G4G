--�½��������ݿ�
	create database SuperMaket
	on(
	--���ݿ���
	name='SuperMaket',
	--·��
	filename='C:\SuperMaket.mdf',
	--��ʼ����
	size=3MB,
	--�������
	maxsize=50MB,
	--�Զ�����
	filegrowth = 1MB 
	)
--�½����ݿ���־
	log
	on
	(
	--���ݿ���
	name='SuperMaket_log',
	--·��
	filename='C:\SuperMaket_log.ldf',
	--��ʼ����
	size=3MB,
	--�������
	maxsize=50MB,
	--�Զ�����
	filegrowth = 10%
	)
drop database SuperMaket