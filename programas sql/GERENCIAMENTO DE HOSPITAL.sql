use exemplo;

CREATE TABLE IF NOT EXISTS Pacientes(
Id_paciente INT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
data_nascimento DATE NOT NULL,
telefone VARCHAR(40) NOT NULL,
email VARCHAR(45) NOT NULL
);
CREATE TABLE IF NOT EXISTS Departamentos(
Cod_especialidade INT PRIMARY KEY,
Nome_especialidade VARCHAR(45) NOT NULL
);
CREATE TABLE IF NOT EXISTS Medicos(
CRM INT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
email VARCHAR(45) NOT NULL,
telefone VARCHAR(40) NOT NULL,
Cod_especialidade INT,
FOREIGN KEY (Cod_especialidade) REFERENCES Departamentos(Cod_especialidade)
);
CREATE TABLE IF NOT EXISTS Consulta(
Id_consulta INT PRIMARY KEY,
data_consulta DATE NOT NULL,
anamnese TEXT NOT NULL,
Id_paciente INT NOT NULL,
CRM INT NOT NULL,
FOREIGN KEY (Id_paciente) REFERENCES Pacientes(Id_paciente),
FOREIGN KEY (CRM) REFERENCES Medicos(CRM)
);
