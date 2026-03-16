const express = require("express");
const { Pool } = require("pg");

const app = express();

const pool = new Pool({
  host: process.env.DB_HOST,
  user: process.env.POSTGRES_USER,
  password: process.env.POSTGRES_PASSWORD,
  database: process.env.POSTGRES_DB,
  port: 5432
});

app.get("/", async (req, res) => {
  try {
    await pool.query("SELECT NOW()");
    res.send("Node.js app connected to PostgreSQL successfully!");
  } catch (err) {
    res.send("Database connection failed: " + err.message);
  }
});

app.listen(3000, () => {
  console.log("Server running on port 3000");
});