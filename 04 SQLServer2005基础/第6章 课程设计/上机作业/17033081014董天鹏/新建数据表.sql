--ѧԱ��
create table Student(
	--��ţ��������Զ�����
	code int primary key identity(10003,1),
	snam nvarchar(20) not null check(len(snam)>1),
	sex nvarchar(1) not null default '��',
	class nvarchar(10) null,
	city nvarchar(20) null,
	birth varchar(30) null
)
--�γ̱�
create table course(
	cid int primary key identity(1,1),
	cnam nvarchar(30) not null unique
)
--�ɼ���
create table score(
	scid int primary key identity(1,1),
	sid int not null foreign key references student(code),
	cid int not null foreign key references course(cid),
	score decimal(5,1)
)


--ɾ�����ݱ�(ע����ɾ���������ɾ��������)
drop table score
drop table student
drop table course




