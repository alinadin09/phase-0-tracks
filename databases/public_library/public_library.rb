# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("library.db")
db.results_as_hash = true

create_bookshelf = <<-SQL
  CREATE TABLE IF NOT EXISTS library(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255)
  )
SQL

# create a bookshelf table
db.execute(create_bookshelf)

def make_bookshelf(db, title)
	db.execute("INSERT INTO library (title) VALUES (?)", [title])
end 

10.times do 
	make_bookshelf(db, Faker::Book.title)
	end 

# add a test book
# db.execute("INSERT INTO library (title) VALUES ('Matilda')")

# books = db.execute("SELECT * FROM library")
# p books 


