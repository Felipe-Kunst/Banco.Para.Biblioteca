create database Biblioteca
use Biblioteca
CREATE TABLE Aluno (
    id_aluno INT NOT NULL,
    PRIMARY KEY (id_aluno),
    FOREIGN KEY (id_aluno) REFERENCES Usuario(id_usuario)
);

CREATE TABLE Professor (
    id_professor INT NOT NULL,
    PRIMARY KEY (id_professor),
    FOREIGN KEY (id_professor) REFERENCES Usuario(id_usuario)
);

CREATE TABLE Funcionario (
    id_funcionario INT NOT NULL,
    PRIMARY KEY (id_funcionario),
    FOREIGN KEY (id_funcionario) REFERENCES Usuario(id_usuario)
);

CREATE TABLE Usuario (
    id_usuario INT PRIMARY KEY NOT NULL,
    nome VARCHAR(255) NOT NULL,
    sobrenome VARCHAR(255) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    tipo_usuario INT NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    UNIQUE (cpf)
);

Create table telefone (                                                                         
	id_telefone int not null,
	DDD varchar(40) not null,
	telefone varchar(40) not null,
	primary key (id_telefone),
	foreign key (id_telefone) references Usuario(id_usuario)
);

CREATE TABLE Reserva (
    id_reserva INT NOT NULL AUTO_INCREMENT,
    id_usuario INT NOT NULL,
    id_livro INT NOT NULL,
    data_reserva DATE NOT NULL,
    PRIMARY KEY (id_reserva),
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario),
    FOREIGN KEY (id_livro) REFERENCES Livro(id_livro)
);

create table livro (
	id_livro int not null auto_increment,
	nome_livro varchar(60) not null,
    autor varchar(60)  not null,
    ano_lançamento date not null,
    numeros_copias int not null,
    edicao int not null,
    ISBM varchar (60) not null,
    primary key (id_livro)
);

create table exemplar(
	id_exemplar int not null auto_increment,
	id_livro int not null,
	Exemplares_Disponiveis varchar(40) not null,
	primary key (id_exemplar),
	foreign key (id_livro) references livro(id_livro)
);

create table categoria (
	id_categoria int not null auto_increment,
    nome_categoria varchar(60),
    primary key (id_categoria)
);

create table exemplar_categoria(
	id_exemplar int not null,
	id_categoria int not null,
	primary key (id_exemplar, id_categoria),
	foreign key (id_exemplar) references exemplar(id_exemplar),
	foreign key (id_categoria) references categoria(id_categoria)
);

create table emprestimo(
	id_emprestimo int not null auto_increment,
    id_livro int not null,
    id_usuario int not null,
    data_emprestimo date not null,
    dataprevista_retorno date not null,
    primary key (id_emprestimo),
    foreign key (id_livro) references livro(id_livro),
	foreign key (id_usuario) references Usuario(id_usuario)
);

create table devolucaooumulta (
	id_reserva int not null,
    data_emissaoMulta date null,
    data_retorno date not null,
    primary key (id_reserva) 
);

