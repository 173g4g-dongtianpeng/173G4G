--�½����ݿ�
create database SuperMaket on(
--�ƶ�����
name ='SuperMaket',
--ָ����ַ�ͺ�׺
filename='d:\SuperMaket.mdf',
--��ʼ����
size=3MB,
--�������
maxsize=50MB,
--ÿ�ε���
filegrowth=1MB
)
log on (
name ='SuperMaket_log',
filename='d:\SuperMaket_log.ldf',
size=3MB,
maxsize=50MB,
filegrowth=10%
)

