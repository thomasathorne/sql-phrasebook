-- tag: select-all-book-ids
SELECT book_id
FROM book;

-- tag: select-book-titles-by-author
SELECT book.title
FROM book
JOIN book_author ON book.book_id = book_author.book_id
JOIN author ON author.author_id = book_author.author_id
WHERE author.lastname = ${last-name};

-- tag: select-authors-by-book-titles
SELECT author.*
FROM author
JOIN book_author ON book_author.author_id = author.author_id
JOIN book ON book.book_id = book_author.book_id
WHERE book.title IN (${titles})

-- tag: select-books-by-publication-years
SELECT book.*
FROM book
WHERE pub_year IN (${publication-years});
