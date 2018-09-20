-- enum型を作ってみよう
-- drop table if exists users;
-- create table users (
--   id int unsigned primary key auto_increment,
--   name varchar(20),
--   score float,
--   ranks enum('gold', 'silver', 'bronze'));

insert into users (name, score, ranks) values ('taguchi', 5.8, 'silver');
insert into users (name, score, ranks) values ('fkoji', 8.2, 'gold');
insert into users (name, score, ranks) values ('dotinstall', 6.1, 'red');
-- set型
drop table if exists users;
create table users (
  id int unsigned primary key auto_increment,
  name varchar(20),
  score float,
  ranks enum('gold', 'silver', 'bronze'));

insert into users (name, score, ranks) values ('taguchi', 5.8, 'silver');
insert into users (name, score, ranks) values ('fkoji', 8.2, 'gold');
insert into users (name, score, ranks) values ('dotinstall', 6.1, 'red');

-- select * from users;
-- select * from users where rank = 'silver';
select * from users where ranks = 2;
