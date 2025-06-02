var database = require("../database/config");

function qtdSocios() {

  var instrucaoSql = `select count(id) from socios;`;

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
  
}

function confirmar(id) {
  
  var instrucaoSql = `insert into confirmados (id_socio,id_jogo) values
 (${id},(select id_jogo from jogo_mais_proximo)) ;`;
  

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
}


module.exports = {
  qtdSocios,
  confirmar,
}
