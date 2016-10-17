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
  counter = 1
  books.each do |row|
    progress = (row[3].to_f/row[2].to_f)*100.round(2)
    puts "----------------------------------------"
    puts "Book #{counter}:"
    puts "TITLE: #{row[1]}"
    puts "TOTAL PAGES: #{row[2]}"
    puts "CURRENT PAGE: #{row[3]}"
    puts "PROGRESS: #{progress}%"
    counter += 1
  end
  puts "----------------------------------------"
end

#Delete Book:
def delete_book(db, title)
  db.execute("DELETE FROM books WHERE name=?", [title])
end

#Search book ID from title:
def search_book(db, title)
  book = db.execute("SELECT id FROM books WHERE name=?", [title])
  if book[0] != nil
    book_id = book[0][0]
  else
    book_id = 0
  end
end

#Add Bookmark:
def new_bookmark(db, title, page)
  book_id = search_book(db, title)
  if book_id == 0
    return false
  end

  db.execute("INSERT INTO bookmarks (book_id, page) SELECT ?, ?
    WHERE NOT EXISTS(SELECT id FROM bookmarks WHERE book_id=? AND page=?)", [book_id, page,
    book_id, page])
end

#DELETE Bookmark:
def delete_bookmark(db, bookmark_id)
  db.execute("DELETE FROM bookmarks WHERE id=?", [bookmark_id])
end

#Display Bookmarks:
def display_bookmarks(db, title=nil)
  if title == nil
    bookmarks = db.execute("SELECT * FROM bookmarks")
  else
    book_id = search_book(db, title)
    if book_id == 0
      return false
    end

    bookmarks = db.execute("SELECT * FROM bookmarks WHERE id=?", [book_id])
  end
  counter = 1
  bookmarks.each do |row|
  puts "----------------------------------------"
  puts "Bookmark #{counter}:"
  title = db.execute("SELECT name FROM books WHERE id=?", [row[1]])[0][0]
  puts "BOOKMARK ID: #{row[0]}"
  puts "TITLE: #{title}"
  puts "PAGE: #{row[2]}"
  counter += 1
  end
  puts "----------------------------------------"
end

#---------------------------------------------------------
#USER INTERFACE

puts "WELCOME TO BOOK MANAGER SYSTEM!"

while true
  puts "PLEASE CHOOSE FROM THE FOLLOWING OPTIONS"
  puts "1) ADD NEW BOOKS"
  puts "2) UPDATE EXISTING BOOKS"
  puts "3) DELETE EXISTING BOOKS"
  puts "4) DISPLAY ALL BOOKS"
  puts "5) ADD NEW BOOKMARK"
  puts "6) DELETE EXISTING BOOKMARK"
  puts "7) VIEW BOOKMARKS"
  puts "8) EXIT"

  option = gets.chomp.to_i
  if option == 1
    puts "PLEASE ENTER THE TITLE OF THE NEW BOOK: "
    title = gets.chomp
    puts "PLEASE ENTER THE TOTAL PAGES OF THE BOOK: "
    total_pages = gets.chomp.to_i
    new_book(db, title, total_pages)
    puts "NEW BOOK SUCCESSFULLY ADDED."
    next
  elsif option == 2
    puts "PLEASE ENTER THE TITLE OF THE BOOK YOU WISH TO UPDATE: "
    title = gets.chomp
    puts "PLEASE ENTER THE PAGES YOU HAVE COMPLETED CURRENTLY: "
    page = gets.chomp.to_i
    update_page(db, title, page)
    puts "NEW PROGRESS SUCCESSFULLY UPDATED."
    next
  elsif option == 3
    puts "PLEASE ENTER THE TITLE OF THE BOOK YOU WISH TO DELETE: "
    title = gets.chomp
    delete_book(db, title)
    puts "BOOK SUCCESSFULLY DELETED."
    next
  elsif option == 4
    display_books(db)
    next
  elsif option == 5
    puts "PLEASE ENTER THE BOOK YOU WISH TO ADD BOOKMARK: "
    title = gets.chomp
    puts "PLEASE ENTER THE PAGE YOU WISH TO BOOKMARK: "
    page = gets.chomp.to_i
    result = new_bookmark(db, title, page)
    if !result
      puts "OPERATION FAILED. PLEASE MAKE SURE THE TITLE IS CORRECT."
    else
      puts "NEW BOOKMARK SUCCESSFULLY ADDED."
    end
    next
  elsif option == 6
    puts "PLEASE ENTER THE ID FOR THE BOOKMARK YOU WISH TO DELETE: "
    puts "(IF NOT SURE, PLEASE ENTER 0 AND CHOOSE 7 TO LOCATE ID)"
    id = gets.chomp.to_i
    if id == 0
      puts "ACTION ABORTED."
      next
    else
      delete_bookmark(db, id)
      puts "BOOKMARK SUCCESSFULLY DELETED."
    end
    next
  elsif option == 7
    puts "DO YOU WISH TO --"
    puts "1) VIEW ALL BOOKMARKS"
    puts "2) VIEW BOOKMARKS FOR A SPECIFIC BOOK"
    option7 = gets.chomp.to_i
    if option7 == 1
      display_bookmarks(db)
      next
    elsif option7 == 2
      puts "PLEASE ENTER THE TITLE OF THE BOOK: "
      title = gets.chomp
      result = display_bookmarks(db, title)
      if !result
        puts "NO BOOK FOUNDED."
        next
      end
    end
    next
  elsif option == 8
    puts "THANK YOU FOR USING BOOK MANAGER!"
    break
  else
    puts "SORRY, INVALID INPUT. PLEASE TRY AGAIN."
    next
  end
end

