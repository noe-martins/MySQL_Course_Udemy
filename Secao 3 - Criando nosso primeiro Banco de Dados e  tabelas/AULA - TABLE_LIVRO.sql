CREATE TABLE livro (
	/*
		CRIA OS ATRIBUTOS DA TABELA COM SEUS PARÂMETROS
    */
	id_livro INT NOT NULL AUTO_INCREMENT,
    nome_livro VARCHAR(45) NOT NULL,
    autor INT NOT NULL,
    editora INT NOT NULL,
    PRIMARY KEY (id_livro),
    /*
		FAZ A INDEXAÇÃO DA TABELA (AINDA VEREI MAIS SOBRE ISSO)
    */
    INDEX fk_autor_idx (autor ASC) VISIBLE,
    INDEX fk_editora_idx (editora ASC) VISIBLE,
    /*
		CLÁUSULA CONSTRAINT FAZ UM RELAÇÃO COM OUTRA TABELA.
        DENTRO DELA PASSA:
			1) QUE ATRIBUTO DA TABELA SERÁ A CHAVE ESTRANGEIRA (foreign key)
            2) O ATRIBUTO QUE FAZ REFERENCIA NA OUTRA TABELA, A CHAME PRIMÁRIA (REFERENCES)
            3) LIGA OS DELETE E UPDATE E OS TORNA RESTRITO
    */
    CONSTRAINT fk_autor
		FOREIGN KEY (autor)
        REFERENCES livraria.autor (idautor)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT,
	CONSTRAINT fk_editora
		FOREIGN KEY (editora)
        REFERENCES livraria.editora (ideditora)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT
);