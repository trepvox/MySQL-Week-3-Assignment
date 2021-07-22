DROP DATABASE  if exists socialmedia;
CREATE DATABASE socialMedia;
USE socialMedia;

-- DROP TABLE if exists comment;
--  DROP TABLE IF EXISTS post;
--  DROP TABLE IF EXISTS user;

CREATE TABLE user (
username VARCHAR(16) not null,
email VARCHAR(24) not null,
password VARCHAR(24) not null,
primary key(username)
);

CREATE TABLE post(
post_id int not null auto_increment,
username VARCHAR(16) NOT NULL,
content_of_post VARCHAR(255) not null,
time_of_post TIMESTAMP not null,
primary key(post_id),
foreign key(username) references user(username)
);

CREATE TABLE comment(
comment_id int not null auto_increment,
username VARCHAR(16) NOT NULL,
post_id int not null,
content_of_comment VARCHAR(255) not null,
time_of_comment TIMESTAMP not null,
primary key (comment_id),
foreign key (username)
REFERENCES user(username),
foreign key (post_id)
REFERENCES post(post_id)
);