const express = require("express");
const app = express();
const dotenv = require("dotenv").config();
const port = process.env.PORT;

app.use("/", require("./routes/contactRoutes"));

app.listen(port, () => {
  console.log(`server running on port ${port}`);
});
