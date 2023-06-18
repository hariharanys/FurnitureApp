const express = require("express");
const routes = express.Router();
const port = process.env.port;
const {
  getContact,
  postContact,
  deleteContact,
  updateContact,
  getIdContact,
} = require("../controller/contactController");

routes.route("/").get(getContact).post(postContact);
routes
  .route("/user")
  .get(getIdContact)
  .delete(deleteContact)
  .put(deleteContact);

module.exports = routes;
