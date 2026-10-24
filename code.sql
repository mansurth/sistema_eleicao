-- Database: eleicao

-- DROP DATABASE IF EXISTS eleicao;

CREATE DATABASE eleicao
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Portuguese_Brazil.1252'
    LC_CTYPE = 'Portuguese_Brazil.1252'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

	CREATE TABLE eleicao (

		id_eleicao INT PRIMARY KEY, 
		ano_eleicao DATE NOT NULL,
		descricao_eleicao VARCHAR(100)
	);

	--eleicao ocorre em 

	CREATE TABLE candidatura (

		id_candidatura INT PRIMARY KEY,
		numero_candidato INT,
		id_candidato INT, --foreign key
		id_eleicao INT FOREIGN KEY,
		id_cargo INT, --foreign key
	);

	--concorre a 

	CREATE TABLE cargo (

		id_cargo INT PRIMARY KEY,
		nome_cargo VARCHAR(20),
		nivel_cargo VARCHAR(10)
	);

	--candidatura possui

	CREATE TABLE candidato (

		id_candidato INT PRIMARY KEY,
		nome_candidato VARCHAR(20),
		id_partido INT, --foreign key 
	);

	--candidato se filia

	CREATE TABLE partido (

		id_partido INT PRIMARY KEY,
		nome_partido VARCHAR(20) NOT NULL, 
		sigla_partido (10),
	);

	--candidatura recebe 

	CREATE TABLE voto (

		id_voto INT PRIMARY KEY,
		tipo_voto VARCHAR(20),
		id_candidatura INT,  --foreign key
		id_urna INT, --foreign key 
		titulo_eleitor INT, --foreign key  
	);

	--voto realiza 

	CREATE TABLE eleitor (

		titulo_eleitoral INT PRIMARY KEY,
		nome_eleitor VARCHAR(20),
		data_nascimento DATE, 
		id_secao INT --foreign key	
	);

	--voto registra 

	CREATE TABLE urna (

		id_urna INT PRIMARY KEY,
		numero_urna INT,
		id_secao INT, --foreign key 
	);

	--urna possui 

	CREATE TABLE secaoEleitoral (

		id_secao INT PRIMARY KEY
	);

	
	