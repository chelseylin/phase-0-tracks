#BOOK MANAGER PROGRAM & DATABASE
#---------------------------------------------------------
#PREPARATION
#Require SQL:
require 'sqlite3'

#Create a database to keep tracks of books I am reading:
db = SQLite3::Database.new("books.db")

#Create tables for books:
create_table_book = <<-SQL
  CREATE TABLE IF NOT EXISTS books (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  total_pages INT,
  current_page INT)
SQL

db.execute(create_table_book)

#Create tables for bookmarks:
create_table_bookmark = <<-SQL
  CREATE TABLE IF NOT EXISTS bookmarks (
  id INTEGER PRIMARY KEY,
  book_id INT,
  page INT,
  FOREIGN KEY (book_id) REFERENCES books(id))
SQL

db.execute(create_table_bookmark)
#---------------------------------------------------------
#METHODS
#Add New Book:
def new_book(db, title, pages)
  db.execute("INSERT INTO books (name, total_pages, current_page) SELECT ?, ?, 0
    WHERE NOT EXISTS(SELECT id FROM books WHERE name=?)", [title, pages, title])
end

#Update Current Page:
def update_page(db, title, current_page)
  db.execute("UPDATE books SET current_page=? WHERE name=?", [current_page, title])
end

#Display All Books:
def display_books(db)
  books = db.execute("SELECT * FROM books")
  p books
end
#---------------------------------------------------------
#TEST DRIVER CODE
new_book(db, 'Jane Eyer', 563)
display_books(db)
update_page(db, 'Jane Eyer', 200)
display_books(db)









