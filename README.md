# TWU SQL Practice

## SQL Commands 
```
# Start SQL
$ sqlite3 biblioteca.sqlite

# Run Script
$ sqlite3 biblioteca.sqlite < q5.sql

# View Schema
$ .schema

# Quit
$ .quit
```


## Questions

### 1. Who checked out the book 'The Hobbit’?
Anand Beck

### 2. How many people have not checked out anything?
37

### 3. What books and movies aren't checked out?
Movies not checked out:
- Thin Red Line
- Crouching Tiger, Hidden Dragon
- Lawrence of Arabia
- Office Space

Books not checked out:
- Fellowship of the Ring
- 1984
- Tom Sawyer
- Catcher in the Rye
- To Kill a Mockingbird
- Domain Driven Design

### 4. Add the book 'The Pragmatic Programmer', and add yourself as a member. Check out 'The Pragmatic Programmer'. Use your query from question 1 to verify that you have checked it out. Also, provide the SQL used to update the database.

```
INSERT INTO book (title) VALUES ('The Pragmatic Programmer');
INSERT INTO member (name) VALUES ('Rong Ying');
INSERT INTO checkout_item (member_id, book_id) SELECT m.id, (SELECT b.id FROM book b WHERE b.title = 'The Pragmatic Programmer')  FROM member m WHERE m.name = 'Rong Ying';
SELECT member.name FROM member, checkout_item, book WHERE book.title = 'The Pragmatic Programmer' AND book.id = checkout_item.book_id AND checkout_item.member_id = member.id;
```

### 5. Who has checked out more than 1 item?
- Anand Beck
- Frank Smith
