SELECT member.name FROM member, checkout_item, book WHERE book.title = 'The Hobbit' AND book.id = checkout_item.book_id AND checkout_item.member_id = member.id;
