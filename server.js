const { config } = require("dotenv");
const express = require("express");
const morgan = require("morgan");
const app = express();
config();
const errorHandler = require("./src/middlewares/errorHandler")
const port = process.env.PORT;

if (process.env.NODE_ENV === "development") {
  app.use(morgan("dev"));
}

app.use(errorHandler);

app.listen(port, () => {
  console.log(`Server is running on ${port} `);
});
