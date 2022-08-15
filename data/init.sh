#!/usr/bin/env bash

cat init.sql | mysql --verbose -u root $*

echo Books . . .
mysql -u root $* -e 'select count(*) from books;' bookstore
echo Users . . .
mysql -u root $* -e 'select count(*) from users;' bookstore
