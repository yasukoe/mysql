-- if . else, case 
drop table if exists users;
create table users (
  id int unsigned primary key auto_increment,
  name varchar(20) unique,
  score float
);
desc users;

insert into users (name, score) values ('taguchi', 5.8);
insert into users (name, score) values ('fkoji', 8.2);
insert into users (name, score) values ('dotinstall', 6.1);
insert into users (name, score) values ('Tanaka', 4.2);
insert into users (name, score) values ('yamada', null);
insert into users (name, score) values ('tashiro', 7.9);

-- select
--   name,
--   score,
--   -- if(score > 5.0, 'OK', 'NG' ) as result
--   case floor(score) %2
--     when 0 then 'even'
--     when 1 then 'odd'
--     else null
--   end as type
--  from users;

select
  name,
  score,
  case
    when score > 8.0 then 'Team-A'
    when score > 6.0 then 'Team-B'
    else 'Team-C'
  end as type
 from users;
