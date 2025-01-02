from cs50 import SQL
password = input("enter a new password: ")
db = SQL("sqlite:///dont-panic.db")
db.execute(
    """
    UPDATE "users"
    SET "password" = ?
    WHERE "username" = 'admin';
    """, password
)
print("Hacked!")