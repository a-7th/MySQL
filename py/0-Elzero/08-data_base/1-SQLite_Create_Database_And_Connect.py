# Import SQLite Module
import sqlite3

# Create Database And Connect
# - Connect
db = sqlite3.connect("app.db")

# Create The Tables and Fields
# - Execute
db.execute(
    "create table if not exists skills (name text, progress integer, user_id integer)")

# Close Database
# - Close
db.close()