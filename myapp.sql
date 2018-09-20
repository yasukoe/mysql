/*
numner:
 - int
 - float
 - double
 - int unsigned

 string:
  - char(4)
  - varchar(255)
  - text

  date/time:
  - date
  - time
  - datetime '2017-07-22 17:22:33'
  true/false:
  - true -> 1
  - false -> 0
 */
drop table if exists users;
create table users (
  id int unsigned primary key auto_increment,
  name varchar(20) unique,
  -- score float not null
  -- score float default 0.0
  score float
);
desc users;

insert into users (name, score) values ('taguchi', 5.8);
insert into users (name, score) values ('fkoji', 8.2);
insert into users (name, score) values ('dotinstall', 6.1);
insert into users (name, score) values ('Tanaka', 4.2);
insert into users (name, score) values ('yamada', null);
insert into users (name, score) values ('tashiro', 7.9);

-- insert into users(id, name, score) values(1, 'taguchi', 5.8);
-- insert into users(id, name, score) values(2, 'fkooji', 8.2);
-- insert into users(id, name, score) values(3, 'suzuki', 6.1);
-- insert into users(id, name, score) values(4, 'yamada', null);
-- insert into users(id, name) values(5, 'sato');


-- insert into users(id, name, score) values
--   (1, 'taguchi', 5.8),
--   (2, 'fkooji', 8.2),
--   (3, 'suzuki', 6.1),
--   (4, 'yamada', null);

-- select * from users;
-- is null, is not null
-- and or not

-- select id, name from users where score >=6.0;
select id, name from users where score > 3.0 and score <=6.0;
select * from users where name = 'taguchi' or name = 'fkoji';
select * from users where name in ('taguchi', 'fkoji');
select * from users where name like '%a%';
select * from users where name like 'T%';
select * from users where name like binary 'T%';
--並び替え、抽出件数の制限
select * from users order by score;
-- select * from users where is not null order by score desc;
select * from users limit 3;
select * from users limit 3 offset 3;
select * from users limit 3 offset 3;
select * from users order by score desc limit 3;
--レコードの更新削除
update users set score = 5.9 where id = 1;
update users set name = 'sasaki', score = 2.9 where name = 'tanaka';
delete from users;
delete from users where score < 6.0;
--数値の演算
select * from users;
update users set score = scpre *1.2 where id %2 =0;
select round(5.355);
select round(5.355,1); --5.4
select floor(5.833); -- 5
select ceil(5.328); --6
select rand(); 0以上１未満のランダムな数値を出してくれる
select * from users order by rand() limit 1;
--文字列の演算
select length('Hello'); --5
select substr('Hello',2); --ello
select substr('Hello', 2,3); -- ell
select lower('Hello'); --Hello
select concat('Hello', 'world'); -- hello world
select length(name), name from users order by length(name);
select length(name) as len, name from users order by len;
