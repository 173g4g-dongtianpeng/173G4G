--�������ݿ�
create database SuperMarket
 on(
name='SuprtMarket',
filename='D:\SuprtMarket.mdf',
size=3mb,
maxsize=50MB,
filegrowth=1mb
)
--���ݿ���־
log
on(
name='SuprtMarket_log',
filename='D:\ SuprtMarket_log.ldf',
size=3mb,
maxsize=50MB,
filegrowth=10%
)
drop database  SuperMarket