INSERT INTO `librarymanagement`.`authors` (`author_name`) VALUES ('George Orwell'), ('L. Michael Hall');

INSERT INTO `librarymanagement`.`genres` (`genre_name`) VALUES ('Novel'), ('Non-fiction');

INSERT INTO `librarymanagement`.`users` (`user_name`, `email`) VALUES ('Max Johnson', 'johnson@mail.com'), ('Aron Brown', 'brown@mail.com');

INSERT INTO `librarymanagement`.`books` (`title`, `publication_year`, `author_id`, `genre_id`) VALUES ('1984', 1949, '1', '1'), ('The Spirit of NLP', 1996, '2', '2');


INSERT INTO `librarymanagement`.`borrowed_books` (`book_id`, `user_id`, `borrow_date`, `return_date`) VALUES ('1', '2', '2024-03-01', '2024-03-12'), ('3', '3', '2023-12-26', '2024-02-03');
