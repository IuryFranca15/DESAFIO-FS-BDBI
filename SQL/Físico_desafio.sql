/* Lógico_desafio: */

CREATE TABLE Camisas (
    tamanho CHAR,
    material VARCHAR(40),
    preco FLOAT,
    quantidade INTEGER,
    fk_Bandas_id INTEGER
);

CREATE TABLE Canecas (
    volume VARCHAR(40),
    cor VARCHAR(40),
    preco FLOAT,
    quantidade INTEGER,
    fk_Bandas_id INTEGER
);

CREATE TABLE Bandas (
    id INTEGER PRIMARY KEY,
    nome VARCHAR(40) UNIQUE
);

CREATE TABLE Chaveiro (
    cor VARCHAR(40),
    preco FLOAT,
    quantidade INTEGER,
    fk_Bandas_id INTEGER
);

CREATE TABLE Livros (
    paginas INTEGER,
    preco FLOAT,
    quantidade INTEGER
);

CREATE TABLE Vinis (
    preco FLOAT,
    quantidade INTEGER,
    fk_Bandas_id INTEGER
);

CREATE TABLE Adesivos (
    preco FLOAT,
    quantidade INTEGER,
    fk_Bandas_id INTEGER
);

CREATE TABLE Contem (
    fk_Bandas_id INTEGER
);
 
ALTER TABLE Camisas ADD CONSTRAINT FK_Camisas_1
    FOREIGN KEY (fk_Bandas_id)
    REFERENCES Bandas (id)
    ON DELETE RESTRICT;
 
ALTER TABLE Canecas ADD CONSTRAINT FK_Canecas_1
    FOREIGN KEY (fk_Bandas_id)
    REFERENCES Bandas (id)
    ON DELETE RESTRICT;
 
ALTER TABLE Chaveiro ADD CONSTRAINT FK_Chaveiro_1
    FOREIGN KEY (fk_Bandas_id)
    REFERENCES Bandas (id)
    ON DELETE RESTRICT;
 
ALTER TABLE Vinis ADD CONSTRAINT FK_Vinis_1
    FOREIGN KEY (fk_Bandas_id)
    REFERENCES Bandas (id)
    ON DELETE RESTRICT;
 
ALTER TABLE Adesivos ADD CONSTRAINT FK_Adesivos_1
    FOREIGN KEY (fk_Bandas_id)
    REFERENCES Bandas (id)
    ON DELETE RESTRICT;
 
ALTER TABLE Contem ADD CONSTRAINT FK_Contem_1
    FOREIGN KEY (fk_Bandas_id)
    REFERENCES Bandas (id)
    ON DELETE RESTRICT;