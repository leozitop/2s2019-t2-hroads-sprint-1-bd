CREATE DATABASE M_HRoads;

Use M_HRoads;

Create table TiposDeHabilidades(
	IdTipo int primary key identity not null
	,Nome varchar(255) not null unique
);

Create table Habilidades(
	IdHabilidade int primary key identity not null
	,Nome varchar(255) not null unique
	,IdTipo int foreign key references TiposDeHabilidades(IdTipo)
);

Create table Classes(
	IdClasse int primary key identity not null
	,Nome varchar(255) not null unique
);

Create table ClassesHabilidades(
	IdClasse int foreign key references Classes (IdClasse)
	,IdHabilidade int foreign key references Habilidades (IdHabilidade)
);

Create table Personagens(
	IdPersonagem int primary key identity not null
	,Nome varchar(255) not null unique
	,IdClasse int foreign key references Classes (IdClasse)
	,Vida int not null
	,Mana int not null
	,DataAtualizacao Date not null
	,DataCriacao Date not null
);

drop table Habilidades;