drop database projetoSprint1;
create database projetoSprint1;
use projetoSprint1;

create table usuario (
	idUsuario int not null auto_increment,
    nomeUsuario varchar(30),
    emailUsuario varchar(20),
    senhaUsuario varchar(15),
    PRIMARY KEY idUsuario(id)
);

create table sensores (
	idSensor int not null,
	temperaturaAtual int,
    luminosidadeAtual int,
    umidadeAtual int,
    horario datetime,
    
    PRIMARY KEY idSensor(idSensor)
) auto_increment = 1000;

create table ambienteUsuario (
	idAmbiente int NOT NULL AUTO_INCREMENT,
    
	nomeAmbiente varchar(50),
    tintaObra varchar(20),
    temperaturaIdeal decimal,
    luminosidadeIdeal int,
    umidadeIdeal decimal,
    
    fkUsuario int,
    fkSensor int,
    foreign key (fkUsuario) references usuario(idUsuario),
    foreign key (fkSensor) references sensores(idSensor),
    
    PRIMARY KEY idAmbiente(idAmbiente)
) AUTO_INCREMENT = 100;