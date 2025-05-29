-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/*
comandos para mysql server
*/

create database febreamarela;
use febreamarela;

create table socios(
id int primary key auto_increment,
nome varchar(100),
email varchar(100),
senha varchar(100),
cpf char(11));

select * from socios;

CREATE TABLE jogos (
    id_jogo INT AUTO_INCREMENT PRIMARY KEY,
    adversario VARCHAR(50) NOT NULL,
    data_jogo DATETIME NOT NULL,
    local varchar(100) NOT NULL,
    rodada varchar(30),
    estadio VARCHAR(60),
    campeonato varchar(50) default 'Série C'
);

INSERT INTO jogos (adversario, data_jogo, local, rodada, estadio, campeonato) 
VALUES ('RB Bragantino', '2025-01-19 21:00:00', 'São Bernardo do Campo', '2ª Rodada', 'Estádio 1º de Maio', 'Paulista');

INSERT INTO jogos (adversario, data_jogo, local, rodada, estadio, campeonato) 
VALUES ('Mirassol', '2025-01-23 18:30:00', 'São Bernardo do Campo', '3ª Rodada', 'Estádio 1º de Maio', 'Paulista');

INSERT INTO jogos (adversario, data_jogo, local, rodada, estadio, campeonato) 
VALUES ('Santos FC', '2025-01-29 18:30:00', 'São Bernardo do Campo', '5ª Rodada', 'Estádio 1º de Maio', 'Paulista');

INSERT INTO jogos (adversario, data_jogo, local, rodada, estadio, campeonato) 
VALUES ('Grêmio Novorizontino', '2025-02-06 19:00:00', 'São Bernardo do Campo', '7ª Rodada', 'Estádio 1º de Maio', 'Paulista');

INSERT INTO jogos (adversario, data_jogo, local, rodada, estadio, campeonato) 
VALUES ('Guarani', '2025-02-16 17:00:00', 'São Bernardo do Campo', '10ª Rodada', 'Estádio 1º de Maio', 'Paulista');

INSERT INTO jogos (adversario, data_jogo, local, rodada, estadio, campeonato) 
VALUES ('São Paulo', '2025-02-23 16:00:00', 'São Bernardo do Campo', '12ª Rodada', 'Estádio 1º de Maio', 'Paulista');

INSERT INTO jogos (adversario, data_jogo, local, rodada, estadio, campeonato) 
VALUES ('Palmeiras', '2025-03-02 18:00:00', 'São Bernardo do Campo', '13ª Rodada', 'Estádio 1º de Maio', 'Paulista');

-- Jogos da série C:

INSERT INTO jogos (adversario, data_jogo, local, rodada, estadio, campeonato) 
VALUES ('ABC', '2025-04-12 16:00:00', 'São Bernardo do Campo', '1ª Rodada', 'Estádio 1º de Maio', 'Série C');

INSERT INTO jogos (adversario, data_jogo, local, rodada, estadio, campeonato) 
VALUES ('Londrina', '2025-05-03 19:00:00', 'São Bernardo do Campo', '4ª Rodada', 'Estádio 1º de Maio', 'Série C');

INSERT INTO jogos (adversario, data_jogo, local, rodada, estadio, campeonato) 
VALUES ('Caxias do Sul', '2025-05-17 19:00:00', 'São Bernardo do Campo', '5ª Rodada', 'Estádio 1º de Maio', 'Série C');

INSERT INTO jogos (adversario, data_jogo, local, rodada, estadio, campeonato) 
VALUES ('CSA', '2025-05-31 19:00:00', 'São Bernardo do Campo', '7ª Rodada', 'Estádio 1º de Maio', 'Série C');

INSERT INTO jogos (adversario, data_jogo, local, rodada, estadio, campeonato) 
VALUES ('Anápolis', '2025-06-28 19:00:00', 'São Bernardo do Campo', '9ª Rodada', 'Estádio 1º de Maio', 'Série C');

INSERT INTO jogos (adversario, data_jogo, local, rodada, estadio, campeonato) 
VALUES ('Ponte Preta', '2025-07-12 19:00:00', 'São Bernardo do Campo', '11ª Rodada', 'Estádio 1º de Maio', 'Série C');

INSERT INTO jogos (adversario, data_jogo, local, rodada, estadio, campeonato) 
VALUES ('Confiança', '2025-07-26 19:00:00', 'São Bernardo do Campo', '13ª Rodada', 'Estádio 1º de Maio', 'Série C');

INSERT INTO jogos (adversario, data_jogo, local, rodada, estadio, campeonato) 
VALUES ('Tombense', '2025-08-02 19:00:00', 'São Bernardo do Campo', '15ª Rodada', 'Estádio 1º de Maio', 'Série C');

INSERT INTO jogos (adversario, data_jogo, local, rodada, estadio, campeonato) 
VALUES ('Figueirense', '2025-08-16 19:00:00', 'São Bernardo do Campo', '17ª Rodada', 'Estádio 1º de Maio', 'Série C');

INSERT INTO jogos (adversario, data_jogo, local, rodada, estadio, campeonato) 
VALUES ('Náutico', '2025-08-23 19:00:00', 'São Bernardo do Campo', '18ª Rodada', 'Estádio 1º de Maio', 'Série C');



CREATE TABLE confirmados (
id_confirmacao int auto_increment primary key,
id_socio int not null,
id_jogo int not null,
data_confirmacao timestamp default current_timestamp,
foreign key  (id_socio) references socios(id),
foreign key (id_jogo) references jogos(id_jogo),
unique key (id_socio, id_jogo) 
);

use febreamarela;

select * from socios;


-- Jogo mais próximo

create view jogo_mais_proximo as
select *
from jogos
where data_jogo >= CURRENT_DATE
order by data_jogo
LIMIT 1;


select * from jogo_mais_proximo;


-- dá um insert no jogo mais próximo
insert into confirmados (id_socio,id_jogo) values
 (1,(select id_jogo from jogo_mais_proximo));
 
 -- comando que verifica se o usuario esta confirmado no proximo jogo
    select count(*) as  qtd
    from  confirmados
    where  id_socio = 1 and id_jogo = (SELECT id_jogo FROM jogo_mais_proximo);
  
select * from confirmados;



-- deleta do jogo mais próximo
delete from confirmados
where id_socio = 1
and id_jogo = (select id_jogo from jogo_mais_proximo);



-- select que verifica quantos jogos o socio foi
select count(id_socio) from confirmados where id_socio=1 and date(data_confirmacao) < current_date();

-- select que verifica a qtd de socios + qtd que foi no ultimo jogo
select (select count(*) from socios) as qtd_socios,
    count(c.id_socio) as qtd_ultimo_jogo
from confirmados c
where c.id_jogo = (
    select id_jogo 
    from confirmados 
    order by data_confirmacao desc 
    limit 1
);




/* esta tabela deve estar de acordo com o que está em INSERT de sua API do arduino - dat-acqu-ino */

