from flask import Flask
import mysql.connector

app = Flask(__name__)
app.secret_key = "raffi_secret_key"  # Change this to a random secret key.

# Connect to the MySQL database
try:
    conn = mysql.connector.connect(
        host="localhost",
        user="praxisarbeit",
        password="1234",
        database="todo"
    )
    if not conn.is_connected():
        raise Exception("Failed to connect to the database.")
except Exception as e:
    print(f"Error connecting to the database: {e}")
    conn = None