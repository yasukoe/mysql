-- inner, outer join
drop table posts;
create table posts (
  id int unsigned primary key auto_increment,
  title varchar(255),
  body text
);
drop table comments;
create table comments (
  id int unsigned primary key auto_increment,
  post_id int not null,
  body text
);

insert into posts (title, body) values ('title 1', 'body 1');
insert into posts (title, body) values ('title 2', 'body 2');
insert into posts (title, body) values ('title 3', 'body 3');

insert into comments (post_id, body) values (1, 'first comment for post 1');
insert into comments (post_id, body) values (1, 'second comment for post 1');
insert into comments (post_id, body) values (3, 'first comment for post 3');
insert into comments (post_id, body) values (4, 'first comment for post 4');

select * from posts;
select * from comments;

-- inner join (２つのテーブルに共通のデータだけを取得する方法)
-- outer join(２つのテーブルで一致しないデータの含めてデータを取得する方法)

-- // inner join //
-- select * from posts inner join comments on posts.id = comments.post_id;
-- select * from posts join comments on posts.id = comments.post_id;
-- select posts.id, title, posts.body, comments.body
--  from posts join comments on posts.id = comments.post_id;

-- // outer join //
-- select * from posts left outer join comments on posts.id = comments.post_id;
-- select * from posts right outer join comments on posts.id = comments.post_id;
select * from posts left join comments on posts.id = comments.post_id;
select * from posts right join comments on posts.id = comments.post_id;
