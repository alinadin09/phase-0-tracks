# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("library.db")

create_bookshelf = <<-SQL
  CREATE TABLE IF NOT EXISTS library(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255)
  )
SQL