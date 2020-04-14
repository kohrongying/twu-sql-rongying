INSERT INTO book (title) VALUES ('The Pragmatic Programmer');
INSERT INTO member (name) VALUES ('Rong Ying');
INSERT INTO checkout_item (member_id, book_id) SELECT m.id, (SELECT b.id FROM book b WHERE b.title = 'The Pragmatic Programmer')  FROM member m WHERE m.name = 'Rong Ying';
SELECT member.name FROM member, checkout_item, book WHERE book.title = 'The Pragmatic Programmer' AND book.id = checkout_item.book_id AND checkout_item.member_id = member.id;
