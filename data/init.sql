-- mysql wouldn't let me load data without this
drop database if exists bookstore;
create database bookstore;
use bookstore;

SET GLOBAL local_infile=1;

source genres.ddl
source books.ddl
source users.ddl
source orders.ddl
source order_books.ddl
source reviews.ddl

load data local infile 'genres.csv'
    into table genres
    fields terminated by ',' optionally enclosed by '"'
    lines terminated by '\n'
    ignore 1 rows;

load data local infile 'books.csv'
    into table books
    fields terminated by ',' optionally enclosed by '"'
    lines terminated by '\n'
    ignore 1 rows;

load data local infile 'users.csv'
    into table users
    fields terminated by ',' optionally enclosed by '"'
    lines terminated by '\n'
    ignore 1 rows;

load data local infile 'orders.csv'
    into table orders
    fields terminated by ',' optionally enclosed by '"'
    lines terminated by '\n'
    ignore 1 rows;

load data local infile 'order_books.csv'
    into table order_books
    fields terminated by ',' optionally enclosed by '"'
    lines terminated by '\n'
    ignore 1 rows;

load data local infile 'reviews.csv'
    into table reviews
    fields terminated by ',' optionally enclosed by '"'
    lines terminated by '\n'
    ignore 1 rows;

-- update totals & taxes in orders table
UPDATE orders o
INNER JOIN
(
   SELECT ob.order_id order_id, SUM(b.price) 'sumu'
   FROM
   order_books ob
   join orders o on ob.order_id=o.id
   join books b on ob.book_id=b.id
   GROUP BY order_id
) i ON o.id = i.order_id
SET
  o.total = i.sumu,
  o.tax = i.sumu * 0.0825
