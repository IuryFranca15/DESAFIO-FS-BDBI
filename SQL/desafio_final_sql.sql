
drop database If exists Loja_rock;
CREATE DATABASE Loja_rock;
USE Loja_rock;



CREATE TABLE Bandas (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) UNIQUE
);


CREATE TABLE Camisas (
    camisa_id INTEGER,
    tamanho CHAR(2),
    material VARCHAR(255),
    preco FLOAT,
    quantidade INTEGER,
    FOREIGN KEY (camisa_id) REFERENCES Bandas(id) ON DELETE RESTRICT
);


CREATE TABLE Canecas (
    caneca_id INTEGER,
    volume VARCHAR(255),
    cor VARCHAR(255),
    preco FLOAT,
    quantidade INTEGER,
    material VARCHAR(40),
    FOREIGN KEY (caneca_id) REFERENCES Bandas(id) ON DELETE RESTRICT
);


CREATE TABLE Chaveiro (
    chaveiro_id INTEGER,
    cor VARCHAR(255),
    preco FLOAT,
    quantidade INTEGER,
    FOREIGN KEY (chaveiro_id) REFERENCES Bandas(id) ON DELETE RESTRICT
);


CREATE TABLE Livros (
    livro_id INTEGER,
    paginas INTEGER,
    preco FLOAT,
    quantidade INTEGER,
    editora VARCHAR(40),
    FOREIGN KEY (livro_id) REFERENCES Bandas(id) ON DELETE RESTRICT
);


CREATE TABLE Vinis (
    vinil_id INTEGER,
    preco FLOAT,
    quantidade INTEGER,
    novo BOOL,
    FOREIGN KEY (vinil_id) REFERENCES Bandas(id) ON DELETE RESTRICT
);


CREATE TABLE Adesivos (
    adesivo_id INTEGER,
    preco FLOAT,
    quantidade INTEGER,
    FOREIGN KEY (adesivo_id) REFERENCES Bandas(id) ON DELETE RESTRICT
);

ALTER TABLE Canecas ADD COLUMN descricao TEXT;
ALTER TABLE Vinis ADD COLUMN modelo VARCHAR(40);
ALTER TABLE Camisas ADD COLUMN descricao TEXT;


INSERT INTO Bandas (nome) VALUES
('Green Day'),
('Nirvana'),
('The Strokes'),
('Arctic Monkeys'),
('The Black Keys'),
('Weezer'),
('Gojira'),
('Fall Out Boy'),
('Gorillaz'),
('Queens of the Stone Age');


INSERT INTO Canecas (caneca_id, volume, cor, preco, quantidade, material, descricao) VALUES
(1, '350ml', 'Preta', 20.00, 60, 'Cerâmica', "enfeitada"),
(2, '500ml', 'Branca', 25.00, 45, 'Vidro', "colorida"),
(3, '350ml', 'Azul', 22.00, 50, 'Cerâmica', "colorida"),
(4, '500ml', 'Vermelha', 24.00, 55, 'Plástico', "colorida"),
(5, '350ml', 'Verde', 21.00, 65, 'Cerâmica', "colorida"),
(6, '500ml', 'Amarela', 26.00, 50, 'Vidro', "colorida"),
(7, '350ml', 'Cinza', 23.00, 40, 'Plástico', "enfeitada"),
(8, '500ml', 'Preta', 27.00, 35, 'Cerâmica', "enfeitada"),
(9, '350ml', 'Branca', 20.00, 70, 'Vidro', "enfeitada"),
(10, '500ml', 'Azul', 28.00, 30, 'Plástico', "arranhada");


INSERT INTO Chaveiro (chaveiro_id, cor, preco, quantidade) VALUES
(1, 'Prata', 10.00, 100),
(2, 'Dourado', 12.00, 80),
(3, 'Preto', 9.00, 120),
(4, 'Prata', 11.00, 95),
(5, 'Dourado', 13.00, 70),
(6, 'Preto', 10.50, 110),
(7, 'Prata', 12.00, 85),
(8, 'Dourado', 14.00, 65),
(9, 'Preto', 11.00, 90),
(10, 'Prata', 15.00, 55);


INSERT INTO Camisas (camisa_id, tamanho, material, preco, quantidade, descricao) VALUES
(1, 'M', 'Algodão', 35.00, 50, 'Camisa de algodão tamanho M com estampa da banda'),
(2, 'G', 'Poliéster', 40.00, 45, 'Camisa de poliéster tamanho G com logo da banda'),
(3, 'P', 'Algodão', 33.00, 60, 'Camisa de algodão tamanho P com gráfico exclusivo'),
(4, 'M', 'Mistura', 37.00, 40, 'Camisa de mistura tamanho M com impressão colorida'),
(5, 'G', 'Algodão', 36.00, 55, 'Camisa de algodão tamanho G com design moderno'),
(6, 'P', 'Poliéster', 32.00, 65, 'Camisa de poliéster tamanho P com arte gráfica'),
(7, 'M', 'Algodão', 38.00, 50, 'Camisa de algodão tamanho M com tema da turnê'),
(8, 'G', 'Mistura', 42.00, 30, 'Camisa de mistura tamanho G com imagem icônica'),
(9, 'P', 'Algodão', 34.00, 70, 'Camisa de algodão tamanho P com logotipo vintage'),
(10, 'G', 'Poliéster', 39.00, 35, 'Camisa de poliéster tamanho G com estampa limitada');


INSERT INTO Vinis (vinil_id, preco, quantidade, novo, modelo) VALUES
(1, 80.00, 40, TRUE, 'Modelo A - Edição Limitada'),
(2, 90.00, 35, FALSE, 'Modelo B - Reedição'),
(3, 85.00, 50, TRUE, 'Modelo C - Primeira Impressão'),
(4, 75.00, 45, TRUE, 'Modelo D - Álbum ao Vivo'),
(5, 95.00, 30, FALSE, 'Modelo E - Versão Especial'),
(6, 70.00, 60, TRUE, 'Modelo F - Coleção Exclusiva'),
(7, 100.00, 25, FALSE, 'Modelo G - Original de 1980'),
(8, 85.00, 55, TRUE, 'Modelo H - Remasterizado'),
(9, 80.00, 50, TRUE, 'Modelo I - Edição Aniversário'),
(10, 90.00, 40, FALSE, 'Modelo J - Versão Deluxe');


INSERT INTO Livros (livro_id, paginas, preco, quantidade, editora) VALUES
(1, 200, 50.00, 30, 'Editora A'),
(2, 350, 60.00, 25, 'Editora B'),
(3, 150, 45.00, 40, 'Editora C'),
(4, 300, 55.00, 35, 'Editora D'),
(5, 250, 50.00, 50, 'Editora E'),
(6, 400, 65.00, 20, 'Editora F'),
(7, 180, 48.00, 45, 'Editora G'),
(8, 220, 52.00, 30, 'Editora H'),
(9, 270, 58.00, 40, 'Editora I'),
(10, 320, 62.00, 25, 'Editora J');

-- outros comandos primeiro
SELECT * FROM CAMISAS WHERE Tamanho = "M";
SELECT COR FROM CANECAS WHERE Preco BETWEEN 5.00 AND 70.00;

SELECT * FROM CAMISAS;
SELECT * FROM CHAVEIRO;
SELECT * FROM canecas;
SELECT * FROM LIVROS;
SELECT * FROM BANDAS;
SELECT * FROM VINIS;
