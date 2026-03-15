from flask import Flask
import mysql.connector

app = Flask(__name__)

@app.route("/")
def home():
    conn = mysql.connector.connect(
        host="mysql_db",
        user="root",
        password="root",
        database="testdb"
    )
    return "Connected to MySQL successfully!"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
