--���ݿ��ʼ���ű�

--�������ݿ�
create database seckill;

--ʹ�����ݿ�
use seckill;
--������ɱ����
create table seckill(
	`seckill_id` bigint not null AUTO_INCREMENT COMMENT '��Ʒ����',
	`name`varchar(120) not null COMMENT '��Ʒ����',
	`number`int not null COMMENT '�������',
	`start_time` timestamp not null COMMENT '��ɱ��ʼʱ��',
	`end_time` timestamp not null COMMENT '��ɱ����ʱ��',
	`create_time` timestamp not null DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
	PRIMARY KEY (seckill_id),
	key idx_start_time(start_time),
	key idx_end_time(end_time),
	key idx_create_time(create_time)
)engine=innoDB AUTO_INCREMENT=1000 DEFAULT CHARSET = utf8 COMMENT='��ɱ����'

--��ʼ������
insert into 
	seckill(name,number,start_time,end_time)
values
	('1000Ԫ��ɱiPhonex','100','2018-02-27 00:00:00','2018-02-28 00:00:00'),
	('500Ԫ��ɱiPhonex','200','2018-02-27 00:00:00','2018-02-28 00:00:00'),
	('300Ԫ��ɱiPhonex','300','2018-02-27 00:00:00','2018-02-28 00:00:00'),
	('200Ԫ��ɱiPhonex','400','2018-02-27 00:00:00','2018-02-28 00:00:00')
	
--��ɱ�ɹ���ϸ��
--�û���¼��֤�����Ϣ

create table success_killed(
	`seckill_id` bigint not null COMMENT '��ɱ��Ʒid',
	`user_phone` bigint not null COMMENT '�û��ֻ�����',
	`state` tinyint not null DEFAULT -1 COMMENT '״̬��ʶ��-1����Ч  0���ɹ�  1���Ѹ���',
	`create_time` timestamp not null COMMENT '����ʱ��',
	PRIMARY KEY (seckill_id,user_phone),/*��������*/
	key idx_create_time(create_time)
)engine=innoDB AUTO_INCREMENT=1000 DEFAULT CHARSET = utf8 COMMENT='��ɱ�ɹ���ϸ��'