-- using functions
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

drop table if exists users_with_team;
create table users_with_team as
select
  id,
  name,
  score,
  case
    when score > 8.0 then 'Team-A'
    when score > 6.0 then 'Team-B'
    else 'Team-C'
  end as team
from users;

-- select sum(score), team from users_with_team group by team;
-- select sum(score), team from users_with_team group by team desc;
select sum(score), team from users_with_team group by team having sum(score) > 10.0;
select sum(score), team from users_with_team where id > 3 group by team;
