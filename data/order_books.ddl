create table order_books (
    order_id int,
    book_id int,
    -- primary key(order_id, book_id),
    foreign key (order_id) references orders(id),
    foreign key (book_id) references books(id)
);
