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

function cancelar(req, res) {
    const id_socio = req.body.id_socio; // recupera oi id do socio para mim conseguir inserir dps

    jogosModel.cancelar(id_socio).then((resultado) => { // id socio como parametro

        res.status(200).json(resultado);
    }).catch(function (erro) {
        res.status(500).json(erro.sqlMessage);
    })
}

function verificar(req, res) {
    const id_socio = req.body.id_socio; // recupera o id do socio para mim conseguir inserir dps
    
    jogosModel.verificar(id_socio).then((resultado) => {
    var quantidade = resultado[0]['qtd']; // qtd é o nome do meu alias q ta no model
        
        res.status(200).json({ quantidade });
    }).catch(function (erro) {
        res.status(500).json(erro.sqlMessage);
    })
}

function jogosPorPessoa(req, res) {
    const id_socio = req.body.id_socio; // recupera o id do socio para mim conseguir inserir dps
    
    jogosModel.jogosPorPessoa(id_socio).then((resultado) => {
    var quantidade = resultado[0]['qtd']; // qtd é o nome do meu alias q ta no model
        
        res.status(200).json({ quantidade });
    }).catch(function (erro) {
        res.status(500).json(erro.sqlMessage);
    })
}

function porcentagemConfirmadosUltimoJogo(req, res){
    
    jogosModel.porcentagemConfirmadosUltimoJogo()
    .then(function(dados) {
    if (dados.length > 0) {
                res.status(200).json(dados);
            } 
        })
        .catch(
            function (erro) {
                res.status(500).json(erro.sqlMessage);
            }
        );

}

function ultimos3Jogos(req, res) {
    jogosModel.ultimos3Jogos().then((resultado) => {
        res.status(200).json(resultado);
    }).catch(function (erro) {
        res.status(500).json(erro.sqlMessage);
    })
}





module.exports = {
    proximoJogo, confirmar, verificar,cancelar,jogosPorPessoa,porcentagemConfirmadosUltimoJogo,ultimos3Jogos
}