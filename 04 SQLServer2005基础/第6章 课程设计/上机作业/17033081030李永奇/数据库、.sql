--�½����ݿ�
create database SuperMarket
on(
name = 'SuperMarket.mdf',
filename = 'C:\SuperMarket.mdf',
size = 3MB,
maxsize = 20MB,
filegrowth = 1MB
)
--�½����ݿ���־
log on(
name = 'SuperMarket.ldf',
filename = 'C:\SuperMarket_log.ldf',
size = 2MB,
maxsize = 20MB,
filegrowth = 10%
)
drop database SuperMarket