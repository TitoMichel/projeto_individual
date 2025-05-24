var aquarioModel = require("../models/aquarioModel");

function qtdSocios(req, res) {
  aquarioModel.qtdSocios().then((resultado) => {
    var quantidade = resultado[0]['count(id)']; // como n coloquei as preciso desse count id
    if (resultado.length > 0) {
      res.status(200).json({ quantidade });
    } else {
      res.status(204).json({ quantidade: 0 });
    }
  }).catch(function (erro) {
    console.log(erro);
    console.log("Houve um erro ao buscar os usuários: ", erro.sqlMessage);
    res.status(500).json(erro.sqlMessage);
  });
}


function confirmar(req, res) {
  var id = req.body.id;

 
    aquarioModel.confirmar(id)
      .then((resultado) => {
        res.status(201).json(resultado);
      }
      ).catch((erro) => {
        console.log(erro);
        console.log(
          "Houve um erro ao realizar o cadastro! Erro: ",
          erro.sqlMessage
        );
        res.status(500).json(erro.sqlMessage);
      });
  }


module.exports = {
  confirmar,
  qtdSocios
}