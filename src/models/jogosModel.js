var database = require("../database/config");

function proximoJogo() {

    var instrucaoSql = `select * from jogo_mais_proximo`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);

}

function confirmar(id_socio) {
    var instrucaoSql = ` insert into confirmados (id_socio,id_jogo) values
 (${id_socio},(select id_jogo from jogo_mais_proximo));
`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);

}

function verificar(id_socio){
       var instrucaoSql = `  select count(*) as  qtd from  confirmados
    where  id_socio = ${id_socio} and id_jogo = (SELECT id_jogo FROM jogo_mais_proximo);
`;

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);

}

function cancelar(id_socio) {
    var instrucaoSql = ` delete from confirmados
where id_socio = ${id_socio}
and id_jogo = (select id_jogo from jogo_mais_proximo);`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);

}

module.exports = {
    proximoJogo,confirmar,verificar,cancelar
}