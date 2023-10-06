create database sistema_educacional;
use sistema_educacional;

create table cadastrar_aluno
(
id_aluno integer primary key,
nome varchar (100) not null,
cpf numeric (11) not null,
telefone numeric (11) not null,
email varchar (30) not null,
data_nasc date,
frequencia_aluno numeric (2)
);

INSERT INTO cadastrar_aluno (id_aluno, nome, cpf, telefone, email, data_nasc, frequencia_aluno)
VALUES
(1, 'João', 11111111111, 11992267738, 'joaopimenta@outlook.com', '2000-04-05', 88),
(2, 'José', 22222222222, 11998767384, 'joselarceda@outlook.com', '2002-02-23', 99),
(3, 'Bianca', 33333333333, 11947227381, 'biancapinheiros@outlook.com', '2001-11-28', 96),
(4, 'Guilherme', 44444444444, 11995228892, 'guiguiEM@outlook.com', '2003-11-02', 94),
(5, 'Gustavo', 55555555555, 11997654384, 'gustaalmeida@outlook.com', '2002-07-17', 96),
(6, 'Alice', 66666666666, 11995289823, 'alicepedrosa@outlook.com', '2001-01-06', 88);

create table cadastrar_professor
(
id_professor integer primary key,
nome varchar (100) not null,
cpf numeric (11) not null,
matricula_professor numeric,
telefone numeric(11),
email varchar (30) not null,
data_nasc date
);

INSERT INTO cadastrar_professor (id_professor, nome, cpf, telefone, email, data_nasc, matricula_professor)
VALUES
(23, 'Adailton', 46626579217, 11992267738, 'adailton1@outlook.com', '1982-11-05', 67),
(62, 'Leandro', 48621321093, 11998767384, 'leandro6020@outlook.com', '1967-02-09', 84),
(84, 'Marcia', 13095721799, 11947227381, 'marciaribeiro@outlook.com', '1976-08-28', 102),
(03, 'Elaine', 21754098665, 11995228892, 'elaineoliveira@outlook.com', '1964-12-22', 74),
(09, 'Ana Maria', 89217548571, 11997654384, 'anamariaclaudete@outlook.com', '1988-11-21', 19),
(92, 'Roberto', 51649481149, 11995289823, 'robertrichards@outlook.com', '1992-01-04', 43);


create table cursos 
(
id_curso integer primary key,
nome_curso varchar (20) not null,
carga_horaria numeric (4) not null,
categoria_curso varchar (100) not null,

id_professor integer,
id_tipos_curso integer,

foreign key (id_tipos_curso) references tipos_curso(id_tipos_curso),
foreign key (id_professor) references cadastrar_professor(id_professor)
);

create table turmas 
(
id_turmas integer primary key,
numero_sala numeric (2),
qtd_alunos numeric (32),

id_aluno integer,
id_professor integer,

foreign key (id_aluno) references cadastrar_aluno(id_aluno),
foreign key (id_professor) references cadastrar_professor(id_professor)
);

create table disciplinas
(
disciplina_id integer primary key,
nome_disciplina varchar (100) not null,
codigo_disciplina varchar (100) not null,
carga_horaria int
);

create table eventos_academicos
(
id_evento integer primary key,
nome_evento varchar (100) not null,
data_evento date,
tema_evento varchar (100) not null
);

create table vagas_estagio
(
id_estagio integer primary key,
nome_estagio varchar (100) not null,
carga_horaria numeric (5),
nome_empresa varchar (100) not null
);

create table projetos_empresas
(
id_projetos integer primary key,
nome_projeto varchar (100) not null,

id_turmas integer,
foreign key (id_turmas)  references turmas(id_turmas)
);

create table tipos_curso
(
id_tipos_curso integer primary key,
tipo_curso varchar(50) not null
);

INSERT INTO tipos_curso (id_tipos_curso, tipo_curso)
VALUES
(),
(),
(),
(),
(),
();

