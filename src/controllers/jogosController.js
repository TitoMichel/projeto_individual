var jogosModel = require("../models/jogosModel");

function proximoJogo(req, res) {
    jogosModel.proximoJogo().then((resultado) => {
        res.status(200).json(resultado);
    }).catch(function (erro) {
        res.status(500).json(erro.sqlMessage);
    })
}

function confirmar(req, res) {
    const id_socio = req.body.id_socio; // recupera oi id do socio para mim conseguir inserir dps

    jogosModel.confirmar(id_socio).then((resultado) => {

        res.status(200).json(resultado);
    }).catch(function (erro) {
        res.status(500).json(erro.sqlMessage);
    })
}

function verificar(req, res) {
    const id_socio = req.body.id_socio; // recupera o id do socio para mim conseguir inserir dps
    
    jogosModel.verificar(id_socio).then((resultado) => {
    var quantidade = resultado[0]['qtd']; // como n coloquei as preciso desse count id
        
        res.status(200).json({ quantidade });
    }).catch(function (erro) {
        res.status(500).json(erro.sqlMessage);
    })
}



module.exports = {
    proximoJogo, confirmar, verificar
}