-- add index to key
drop table if exists users;
create table users (
  id int unsigned primary key auto_increment,
  name varchar(20),
  score float
);

alter table users add index index_score(score);
-- show index from users;

-- explain select * from users where score > 5.0;
explain select * from users where name = 'taguchi';

alter table users drop index index_score;
show index from users;
-- -- insert into users (name, score) values ('taguchi', 5.8);
-- insert into users (name, score) values ('fkoji', 8.2);
-- insert into users (name, score) values ('dotinstall', 6.1);
-- insert into users (name, score) values ('Tanaka', 4.2);
-- insert into users (name, score) values ('yamada', null);
-- insert into users (name, score) values ('tashiro', 7.9);
