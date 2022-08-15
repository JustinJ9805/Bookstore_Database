create table books (
  id int auto_increment,
  title varchar(64),
  subtitle varchar(64),
  isbn13 char(13),
  price float,
  image varchar(128),
  url varchar(128),
  genre_id int,
  primary key(id),
  foreign key (genre_id) references genres(id)
);
