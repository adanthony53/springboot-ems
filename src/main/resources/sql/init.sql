create table if not exists t_user
(
	id varchar(40) not null
		primary key,
	username varchar(40) null,
	realname varchar(40) null,
	password varchar(40) null,
	gender varchar(10) null
);

create table if not exists t_emp
(
	id varchar(40) not null
		primary key,
	name varchar(40) null,
	salary double(7,2) null,
	age int(10) null
);
