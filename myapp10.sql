-- transaction , commit , rollback
drop table if exists users;
create table users (
  id int unsigned primary key auto_increment,
  name varchar(20),
  score float
);

insert into users (name, score) values ('taguchi', 5.8);
insert into users (name, score) values ('fkoji', 8.2);
insert into users (name, score) values ('dotinstall', 6.1);
insert into users (name, score) values ('Tanaka', 4.2);
insert into users (name, score) values ('yamada', null);
insert into users (name, score) values ('tashiro', 7.9);

start transaction;
update users set score = score -1.2 where name = 'fkoji';
update users set score = score + 1.2 where name = 'taguchi';
-- commit;
rollback;

select * from users;
