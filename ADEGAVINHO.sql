drop database if exists Adega;
create database Adega;
use Adega;
create table Regiao(
	codRegiao bigint not null,
    nomeRegiao varchar(100),
    descricaoRegiao text,
	primary key (codRegiao)
);

create table Vinicola(
	codVinicola bigint not null,
    nomeVinicola varchar(100),
    descricaoVinicola text,
    foneVinicola varchar(15),
    emailVinicola varchar(15),
    codRegiao bigint,
    primary key(codVinicola),
    foreign key(codRegiao) references Regiao(codRegiao)
);

create table Vinho(
	codVinho bigint not null,
    nomeVinho varchar(50) not null,
    tipoVinho varchar(50) not null,
    anoVinho int,
    descricaoVinho text,
    codVinicola bigint,
    primary key (codVinho),
    foreign key(codVinicola) references Vinicola(codVinicola)
);
