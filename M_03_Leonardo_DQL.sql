use M_HRoads;

Select * from Personagens;
Select * from Classes;
Select Nome from Classes;
Select * from Habilidades;
Select IdHabilidade from Habilidades order by IdHabilidade;
Select * from TiposDeHabilidades;
Select TH.*, H.*
	from TiposDeHabilidades TH
	join Habilidades H
	ON TH.IdTipo = H.IdTipo;
Select P.*, C.*
	from Personagens P
	join Classes C
	ON P.IdClasse = C.IdClasse;
Select P.*, C.*
	from Personagens P
	left join Classes C
	ON P.IdClasse = C.IdClasse;
Select CH.*, C.*, H.*
	from ClassesHabilidades CH
	join Classes C
	ON CH.IdClasse = C.IdClasse
	join Habilidades H
	ON CH.IdHabilidade = H.IdHabilidade;
Select CH.*, C.*, H.*
	from ClassesHabilidades CH
	left join Classes C
	ON CH.IdClasse = C.IdClasse
	left join Habilidades H
	ON CH.IdHabilidade = H.IdHabilidade;
