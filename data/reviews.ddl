create table reviews(
    review_num INT auto_increment,
    book_id INT,
    review VARCHAR(255),
    stars INT,
    primary key(review_num),
    foreign key (book_id) references books(book_id)
);