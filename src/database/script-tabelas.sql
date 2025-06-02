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
VALUES ('CSA', '2025-06-02 19:00:00', 'São Bernardo do Campo', '7ª Rodada', 'Estádio 1º de Maio', 'Série C');

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


INSERT INTO socios (nome, email, senha, cpf) VALUES

('Michel Tito', 'micheltito758@gmail.com', '1234567', '12345678900'),
('Carlos Andrade', 'carlos.andrade@email.com', '1234567', '12345678900'),
('Fernanda Lima', 'fernanda.lima@email.com', '1234567', '98765432100'),
('Juliana Souza', 'juliana.souza@email.com', '1234567', '32198765400'),
('Marcos Pereira', 'marcos.pereira@email.com', '1234567', '45678912300'),
('Bruna Silva', 'bruna.silva@email.com', '1234567', '65412398700'),
('Rafael Costa', 'rafael.costa@email.com', '1234567', '78932165400'),
('Amanda Oliveira', 'amanda.oliveira@email.com', '1234567', '15975348600'),
('Lucas Mendes', 'lucas.mendes@email.com', '1234567', '25836914700'),
('Patrícia Almeida', 'patricia.almeida@email.com', '1234567', '14725836900'),
('Ricardo Ferreira', 'ricardo.ferreira@email.com', '1234567', '36914725800');
 
 



CREATE TABLE confirmados (
id_confirmacao int auto_increment primary key,
id_socio int not null,
id_jogo int not null,
data_confirmacao timestamp default current_timestamp,
foreign key  (id_socio) references socios(id),
foreign key (id_jogo) references jogos(id_jogo),
unique key (id_socio, id_jogo) 
);

INSERT INTO confirmados (id_socio, id_jogo) VALUES
(1, 2),
(2, 3),
(3, 1),
(4, 5),
(5, 2),
(6, 4),
(7, 3),
(8, 1),
(9, 5),
(10, 4),
(1, 3),
(2, 5),
(3, 4),
(4, 1),
(5, 3),
(6, 2),
(7, 5),
(8, 4),
(9, 3),
(10, 2),
(1, 5),
(2, 1),
(3, 2),
(4, 3),
(5, 4),
(6, 5),
(7, 1),
(8, 2),
(9, 4),
(10, 3),
(1, 4),
(2, 2),
(3, 5),
(4, 2),
(5, 1),
(6, 3),
(7, 4),
(8, 5),
(9, 1),
(10, 5),
(5, 6),
(6, 6),
(7, 6),
(8, 6),
(9, 6),
(10, 6);

INSERT INTO confirmados (id_socio, id_jogo) VALUES
(1, 10),
(2, 10),
(3, 10),
(4, 10),
(7, 10),
(8, 10),
(9, 10),
(10, 10),
(1, 9),
(2, 9),
(3, 9),
(4, 9),
(5, 9),
(6, 8),
(7, 8),
(8, 8),
(9, 8),
(10,8);





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

select count(id_socio) from confirmados where id_socio=12 and date(data_confirmacao) < current_date();
select * from socios;

-- select que verifica a qtd de socios + qtd que foi no ultimo jogo
create or replace view ultimos_3_jogos
 as
 select  id_jogo
    from  jogos
    where data_jogo < current_date()
    order by data_jogo desc
    limit 3;
    -- tive q criar essa view pois não consegui usar limit com subquery.
    
select j.adversario, count(c.id_socio) as  qtdUltimos3jogos
from confirmados c 
inner join jogos j on j.id_jogo=c.id_jogo
where c.id_jogo  in (
   select * from ultimos_3_jogos
) group by j.id_jogo,j.adversario; 


-- select para ver qtd socios e qts foram no ultimo jogo
create  view ultimo_jogo
 as
 select  id_jogo
    from  jogos
    where data_jogo < current_date()
    order by data_jogo desc
    limit 1;
    
select (select count(*) from socios) as qtdSocios,
    count(c.id_socio) as qtdUltimoJogo
from confirmados c
where c.id_jogo = (
    select id_jogo 
    from ultimo_jogo 
);


select * from confirmados;

-- select que conta quantas vezes o usuário foi aos jogos.
select count(id_socio) as qtd from confirmados c inner join jogos j 
on j.id_jogo=c.id_jogo
where id_socio=2  and date(j.data_jogo) < current_date();

-- contas quantos foram no ultimo jogo
select count(id_socio) from confirmados c where c.id_jogo = (select id_jogo from ultimo_jogo);
    
/* esta tabela deve estar de acordo com o que está em INSERT de sua API do arduino - dat-acqu-ino */

