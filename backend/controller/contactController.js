const express = require("express");
const port = process.env.port;
const { constants } = require("../constants");

const getContact = (req, res) => {
  res.status(200).json({ message: "Get all contacts" });
};

const postContact = (req, res) => {
  res.status(200).json({ message: "post all contacts" });
};

const deleteContact = (req, res) => {
  const id = req.query.id;
  res.status(200).json({ message: "delete all contacts" });
};

const getIdContact = (req, res) => {
  const id = req.query.id;
  res.status(200).json({ message: `the id is ${id}` });
};

const updateContact = (req, res) => {
  const id = req.query.id;
  res.status(200).json({ message: "update all contacts" });
};

module.exports = {
  getContact,
  postContact,
  deleteContact,
  updateContact,
  getIdContact,
};
