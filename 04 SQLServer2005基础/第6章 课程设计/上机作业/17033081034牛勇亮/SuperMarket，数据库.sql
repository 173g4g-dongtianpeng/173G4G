--�������ݿ�
create database SuperMarket
on
(
name='SuperMarket.mdf',
filename='C:\SuperMarket.mdf',
size=3MB,
maxsize=50MB,
filegrowth=2MB
)
log on
(
name='SuperMarket.ldf',
filename='C:\SuperMarket_log.ldf',
size=3MB,
maxsize=50MB,
filegrowth=10%
)
--ɾ�����ݿ�
drop database SuperMarket
