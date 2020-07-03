create Database student_examination_sys;
use student_examination_sys;
create Table if not exists student(
id varchar(40) not null,
name varchar(100) not null,
age int(40) not null,
sex varchar(40) not null,
primary key(id)
);
insert into student (id, name, age, sex) 
values ('001', 'zhangsan', 18, 'male');
insert into student (id, name, age, sex) 
values ('002', 'lisi', 20, 'female');

create Table if not exists subject(
id varchar(40) not null,
subject varchar(100) not null,
teacher varchar(40) not null,
description varchar(40) not null,
primary key(id)
);
insert into subject (id, subject, teacher, description) 
values ('1001', 'Chinese', 'Mr.Wang', 'the exam is easy');
insert into subject (id, subject, teacher, description) 
values ('1002', 'math', 'Miss Liu', 'the exam is difficult');

create Table if not exists score(
id varchar(40) not null,
student_id varchar(100) not null,
subject_id varchar(40) not null,
score double not null,
primary key(id)
);
insert into score (id, student_id, subject_id, score) 
values ('1', '001', '1001', 80);
insert into score (id, student_id, subject_id, score) 
values ('2', '002', '1002', 60);
insert into score (id, student_id, subject_id, score) 
values ('3', '001', '1001', 70);
insert into score (id, student_id, subject_id, score) 
values ('4', '002', '1002', 60.5);
