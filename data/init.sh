#!/usr/bin/env bash

cat init.sql | mysql --verbose -u root $*

for t in genres books users orders reviews order_books
do
  echo $t . . .
  mysql -u root $* -e "select count(*) from ${t};" bookstore
done
