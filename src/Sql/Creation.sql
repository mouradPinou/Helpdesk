USE master 
CREATE DATABASE GPI

USE GPI

CREATE TABLE type(
	code_type INT IDENTITY PRIMARY KEY,
	desig_type NVARCHAR(10) NOT NULL
)

CREATE TABLE marque(
	code_marque INT IDENTITY PRIMARY KEY,
	desig_marque NVARCHAR(10) NOT NULL
)

CREATE TABLE modele(
	code_modele INT IDENTITY PRIMARY KEY,
	desig_modele NVARCHAR(10) NOT NULL
)

CREATE TABLE reforme(
	code_ref INT IDENTITY PRIMARY KEY,
	date_ref DATE NOT NULL
)

CREATE TABLE Inventaire(
	code_inv INT IDENTITY PRIMARY KEY,
	anne_inv DATE NOT NULL,
	date_impress_inv DATE NOT NULL
)

CREATE TABLE Structure(
	code_stru INT PRIMARY KEY,
	desig_stru NCHAR(20) 
)

CREATE TABLE Employer(
	code_emp INT IDENTITY PRIMARY KEY,
	code_stru INT FOREIGN KEY REFERENCES Stucture(code_stru),
	nom_emp NVARCHAR(20) NOT NULL,	
)

CREATE TABLE OperationEffectue(
	code_operation INT IDENTITY PRIMARY KEY,
	Desig_operation NVARCHAR(10) NOT NULL
)

CREATE TABLE DemandeIntervention(
	code_dint INT IDENTITY PRIMARY KEY,
	code_emp INT FOREIGN KEY REFERENCES Employer(code_emp),
	Date_int DATE NOT NULL
)

CREATE TABLE Intervention(
	code_int INT IDENTITY PRIMARY KEY,
	code_emp INT FOREIGN KEY REFERENCES Employer(code_emp),
	code_dint INT FOREIGN KEY REFERENCES DemandeIntervention(code_dint),
	delais_int NVARCHAR(5)
)

CREATE TABLE LIB(
	num_let INT IDENTITY PRIMARY KEY,
	code_emp INT FOREIGN KEY REFERENCES Employer(code_emp),
	note NVARCHAR(100)
)

CREATE TABLE Material(
	code_mat INT IDENTITY PRIMARY KEY,
	code_type INT FOREIGN KEY REFERENCES type(code_type),
	code_marque INT FOREIGN KEY REFERENCES marque(code_marque),
	code_modele INT FOREIGN KEY REFERENCES modele(code_modele),
	ref_mat NVARCHAR(10) NOT NULL,
	description_mat NVARCHAR(25),
	date_rec DATE NOT NULL
)

CREATE TABLE Inventorier(
	code_mat INT FOREIGN KEY REFERENCES Material(code_mat),
	code_inv INT FOREIGN KEY REFERENCES Inventaire(code_inv),
	etat_generale NVARCHAR(10) NOT NULL
)

CREATE TABLE Subit(
	code_int INT FOREIGN KEY REFERENCES Intervention(code_int),
	code_mat INT FOREIGN KEY REFERENCES Material(code_mat),
	etat NVARCHAR(10) NOT NULL,
	Description NVARCHAR(30) NOT NULL
)

CREATE TABLE Demender(
	code_demande INT IDENTITY PRIMARY KEY,
	code_let INT FOREIGN KEY REFERENCES LIB(code_let),
	code_mat INT FOREIGN KEY REFERENCES Material(code_mat),
	date_demande DATE NOT NULL DEFAULT getdate()
)

CREATE TABLE users(
	id_usr INT IDENTITY PRIMARY KEY,
	usr_name NCHAR(10) NOT NULL,
	usr_pwd NCHAR(32) NOT NULL,
	Nom_Complet NCHAR(30) NOT NULL,
	Func_user NCHAR(2) NOT NULL,
	usr_right NCHAR(5) NOT NULL,
	CHECK usr_right = 'ADMIN' OR usr_right = 'USER',
	CHECK Func = 'HD' OR Func = 'MT'
)