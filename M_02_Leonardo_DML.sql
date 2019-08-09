Use M_HRoads;

insert into TiposDeHabilidades (Nome)
values ('Ataque'), ('Defesa'), ('Cura'), ('Magia');

select * from Classes;

insert into Habilidades (Nome, IdTipo)
values ('Lança Mortal', 1), ('Escudo Supremo', 2), ('Recuperar Vida', 3);

insert into Classes (Nome)
values ('Bárbaro'), ('Cruzado'), ('Caçadora de Demônios'), ('Monge'), ('Necromante'), ('Feiticeiro'), ('Arcanista');

insert into ClassesHabilidades (IdClasse, IdHabilidade)
values (1, 1), (1, 2), (2, 2), (3, 1), (4, 3), (4, 2), (6, 3);

insert into Personagens (Nome, IdClasse, Vida, Mana, DataAtualizacao, DataCriacao)
values ('DeuBug', 1, 100, 80, '09/08/2019', '18/01/2019'), ('BitBug', 4, 70, 100, '09/08/2019', '17/03/2016'), ('Fer8', 7, 75, 60, '09/08/2019', '18/03/2018');

Update Personagens 
	set nome = 'Fer7'
	where IdPersonagem = 3;

Update Classes 
	set nome = 'Necromancer'
	where IdClasse = 5;