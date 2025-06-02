
var database = require("../database/config");

function proximoJogo() {

    var instrucaoSql = `select * from jogo_mais_proximo`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);

}

function jogosPorPessoa(id_socio) {
    var instrucaoSql = `select count(id_socio) as qtd from confirmados c inner join jogos j 
    on j.id_jogo=c.id_jogo
 where id_socio=${id_socio}  and date(j.data_jogo) < current_date();`;

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

function verificar(id_socio) {
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

// select do gráfico,usando subquerie para contar os socios e quantos foram no último jogo
function porcentagemConfirmadosUltimoJogo() {
    var instrucaoSql = ` select (select count(*) from socios) as qtdSocios,
    count(c.id_socio) as qtdUltimoJogo
from confirmados c
where c.id_jogo = (
    select id_jogo 
    from ultimo_jogo 
);
`;





    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}


function ultimos3Jogos() {

    var instrucaoSql = `select j.adversario, count(c.id_socio) as  qtdPresente
    from confirmados c 
    inner join jogos j on j.id_jogo=c.id_jogo
    where c.id_jogo  in (
   select * from ultimos_3_jogos
) group by j.id_jogo,j.adversario; `;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);

}

module.exports = {
    proximoJogo, confirmar, verificar, cancelar, jogosPorPessoa, porcentagemConfirmadosUltimoJogo, ultimos3Jogos
}