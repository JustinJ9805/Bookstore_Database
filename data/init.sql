-- mysql wouldn't let me load data without this
drop database bookstore;
create database bookstore;
use bookstore;

SET GLOBAL local_infile=1;

source users.ddl
source books.ddl

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
