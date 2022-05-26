drop user if exists Somellier@"localhost";
create user Somellier@"localhost" identified by "1234" with max_queries_per_hour 40;


grant select on adega.vinho to Somellier@localhost; grant select (codVinicola, nomeVinicola) on adega.vinicola to Somellier@localhost;
