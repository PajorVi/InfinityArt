create database  infinityArt;
use infinityArt;

create table sensores (
idSensor int auto_increment,
temperaturaAtual int,
luminosidadeAtual int,
umidadeAtual int,
horario datetime,

primary key idSensor (idSensor)
) auto_increment = 1000;

create table usuario(
idUsuario int auto_increment,
nome varchar(40),
email varchar(60),
senha varchar(30),
tipoCliente varchar(12),

primary key idUsuario(idUsuario)
) auto_increment = 100;

create table ambiente(
idAmbiente int auto_increment,
nome varchar(70),
tipoTinta varchar(20),

fk_usuario int,
fk_sensor int,

foreign key (fk_usuario) references usuario(idUsuario),
foreign key (fk_sensor) references sensores(idSensor),
primary key idAmbiente(idAmbiente) 
);