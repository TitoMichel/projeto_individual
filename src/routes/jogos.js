var express = require("express");
var router = express.Router();

var jogosController = require("../controllers/jogosController");

router.get("/proximoJogo", function (req, res) {
  jogosController.proximoJogo(req, res);
});


router.post("/confirmar", function (req, res) {
  jogosController.confirmar(req, res);
});

router.post("/cancelar", function (req, res) {
  jogosController.cancelar(req, res);
});


router.post("/verificar", function (req, res) {
  jogosController.verificar(req, res);
});




module.exports = router;