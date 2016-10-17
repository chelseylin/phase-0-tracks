#BOOK MANAGER PROGRAM & DATABASE

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