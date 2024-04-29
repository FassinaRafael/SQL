use exemplo;

#COMANDOS DE INSERÇÃO
INSERT INTO Pacientes (CPF, nome, data_nascimento, telefone, email)
VALUES
("11181077753", "John Kennedy", "1990-05-11", "+55(27)99085-6723", "blabla@gmail.com"),
("23456789033", "Paula Arandes", "2000-03-03", "+55(27)99641-5212", "folia@gmail.com"),
("34564312332", "Fernando Fagundes", "2009-06-09", "+55(27)99987-4651", "solis@gmail.com"),
("45674465432", "Rachel Oliveira", "1972-11-12", "+55(27)99456-7543", "porteiro@gmail.com"),
("56785543274", "Pedro Bala", "1976-02-04", "+55(27)99452-9797", "capitaodeareia@gmail.com");

INSERT INTO Departamentos (Cod_especialidade, Nome_especialidade)
VALUES
(1, "Cardiologia"),
(2, "Pediatria"),
(3, "Neurologia"),
(4, "Urologia"),
(5, "Dermatologia");

INSERT INTO Medicos (CRM, nome, email, telefone, Cod_especialidade)
VALUES
(1111, "Dra. Deolane Vieira", "pipoporopo@gmail.com", "+55(27)33411-5555", 1),
(2222, "Dr. Picollo Pater", "kamehame@gmail.com", "+55(27)66666-5555", 5),
(3333, "Dr. Pernalonga jr", "looneytunes@gmail.com", "+55(27)44444-3333", 3),
(4444, "Dr. Rambo Troia", "arnoldshazeneger@gmail.com", "+55(27)42422-4242", 2),
(5555, "Dra. Coraline Teixeira", "pulga@gmail.com", "+55(27)54545-1212", 4);

INSERT INTO Consulta (Id_consulta, data_consulta, anamnese, CPF, CRM)
VALUES
(0001, "2024-10-21", "Mal súbito", "11181077753", 1111),
(0002, "2024-10-21", "Paciente sentiu dores abdomnais intensas", "23456789033", 2222),
(0003, "2024-10-21", "Paciente teve crise alergica", "34564312332", 3333),
(0004, "2024-10-21", "Paciente infartou", "45674465432", 4444),
(0005, "2024-10-21", "Paciente sofreu perfuracao por projetil", "56785543274", 5555);

