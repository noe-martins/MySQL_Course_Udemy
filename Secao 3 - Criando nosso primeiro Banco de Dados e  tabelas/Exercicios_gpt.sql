-- 1°) Questão

CREATE DATABASE escola;

CREATE TABLE escola.alunos(
    id_aluno INT NOT NULL auto_increment,
    nome varchar(45) not null,
    curso varchar(45) not null,
    primary key (id_aluno)
);

/*
-------------------------------------------
*/

-- 2°) Questão

-- RESULT: AINDA NÃO CHEGUEI NESSE COMANDO (ALTERAÇÕES)

/*
-------------------------------------------
*/

-- 3°) Questão

CREATE TABLE escola.cursos(
    id_curso INT NOT NULL AUTO_INCREMENT,
    nome_curso VARCHAR(45) NOT NULL,
    departamento VARCHAR(45) NOT NULL,
    PRIMARY KEY (id_curso)
);

/*
-------------------------------------------
*/

-- 4°) Questão

-- RESULT: AINDA NÃO CHEGUEI NESSE COMANDO (ALTERAÇÕES)

/*
-------------------------------------------
*/
-- 5°) Questão

CREATE TABLE escola.matriculas(
    id_matricula INT NOT NULL AUTO_INCREMENT,
    aluno INT NOT NULL,
    curso INT NOT NULL,
    data_matricula DATE NOT NULL,
    PRIMARY KEY (id_matricula),
    
    INDEX fk_aluno_idx (aluno ASC) VISIBLE,
    INDEX fk_curso_idx (curso ASC) VISIBLE,
    
    CONSTRAINT fk_aluno
        FOREIGN KEY (aluno)
        REFERENCES escola.alunos (id_alunos)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT,
    
    CONSTRAINT fk_curso
        FOREIGN KEY (curso)
        REFERENCES escola.cursos (id_curso)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT
);

/*
-------------------------------------------
*/
-- 6°) Questão

-- RESULT: AINDA NÃO CHEGUEI NESSE COMANDO (ALTERAÇÕES)

/*
-------------------------------------------
*/
-- 7°) Questão

CREATE TABLE escola.professores(
    id_professor INT NOT NULL AUTO_INCREMENT,
    nome_professor VARCHAR(45) NOT NULL,
    disciplina VARCHAR(45) NOT NULL,
    PRIMARY KEY (id_professor)
);

/*
-------------------------------------------
*/
-- 8°) Questão

-- RESULT: AINDA NÃO CHEGUEI NESSE COMANDO (SELEÇÕES)

/*
-------------------------------------------
*/
-- 9°) Questão

-- RESULT: AINDA NÃO CHEGUEI NESSE COMANDO (ALTERAÇÕES)

/*
-------------------------------------------
*/
-- 10°) Questão

CREATE TABLE escola.departamentos(
    id_departamento INT NOT NULL AUTO_INCREMENT,
    nome_departamento VARCHAR(45) NOT NULL,
    PRIMARY KEY (id_departamento)
);

/*
-------------------------------------------
*/