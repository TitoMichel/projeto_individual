var express = require("express");
var router = express.Router();

var sociosController = require("../controllers/sociosController");

router.get("/qtdSocios", function (req, res) {
  sociosController.qtdSocios(req, res);
});

module.exports = router;