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



/* esta tabela deve estar de acordo com o que está em INSERT de sua API do arduino - dat-acqu-ino */

