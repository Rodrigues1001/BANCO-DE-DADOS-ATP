select V.nomeVinho, V.anoVinho, VA.nomeVinicola, R.nomeRegiao from vinho V
join Vinicola VA
on v.codVinicola = VA.codVinicola
join Regiao R
on r.codRegiao = VA.codRegiao; 
