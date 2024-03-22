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

insert into sensores (temperaturaAtual, luminosidadeAtual, umidadeAtual, horario) values
(25,50,75,'2024-03-02 11:00:15'),
(27,70,69, '2024-03-02 13:15:03'),
(30,69,69, '2024-03-02 15:10:00');

create table usuario(
idUsuario int auto_increment,
nome varchar(40),
email varchar(60),
senha varchar(30),
tipoCliente varchar(12),

primary key idUsuario(idUsuario)
) auto_increment = 100;

insert into usuario (nome, email, senha, tipoCliente) values
('Alana','alana@gmail.com','XXXXXXXX','Colecionador'),
('ArtGalery','galery@gmail.com','XXXXXXXX','Museu'),
('Bartolomeo','bartolomeo@gmail.com','XXXXXXXX','Artista');

create table ambiente(
idAmbiente int auto_increment,
nome varchar(70),
tipoTinta varchar(20),

fk_usuario int,
fk_sensor int,

primary key idAmbiente(idAmbiente),
foreign key (fk_usuario) references usuario(idUsuario),
foreign key (fk_sensor) references sensores(idSensor)
);

insert into ambiente (nome, tipoTinta, fk_usuario, fk_sensor) values
('Porão de Artes','Acrílica',100 ,1000),
('Salão principal','Óleo',101 ,1001),
('Armazém de obras','Guache',102 ,1002);

select * from sensores
where idSensor = 1000;

select * from usuario
where idUsuario = 100;

select * from  ambiente
where idAmbiente = 1;