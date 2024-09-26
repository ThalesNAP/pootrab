CREATE TABLE Usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    senha VARCHAR(255) NOT NULL
);

CREATE TABLE Artistas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    genero VARCHAR(50)
);

CREATE TABLE Playlists (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(id) ON DELETE CASCADE
);

CREATE TABLE Musicas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    artista_id INT,
    FOREIGN KEY (artista_id) REFERENCES Artistas(id) ON DELETE CASCADE
);


INSERT INTO Usuarios (nome, email, senha) VALUES
('João Silva', 'joao.silva@example.com', 'senha123'),
('Maria Souza', 'maria.souza@example.com', 'senha456'),
('Carlos Oliveira', 'carlos.oliveira@example.com', 'senha789'),
('Ana Pereira', 'ana.pereira@example.com', 'senha101'),
('Lucas Mendes', 'lucas.mendes@example.com', 'senha102');

INSERT INTO Artistas (nome, genero) VALUES
('Artista A', 'Pop'),
('Artista B', 'Rock'),
('Artista C', 'Jazz'),
('Artista D', 'Hip-Hop'),
('Artista E', 'Eletrônica');

INSERT INTO Playlists (usuario_id, nome, descricao) VALUES
(1, 'Minhas Favoritas', 'Playlist com minhas músicas favoritas'),
(2, 'Rock Clássico', 'Playlist de rock clássico'),
(3, 'Jazz Relax', 'Playlist para relaxar com jazz'),
(4, 'Hip-Hop Vibes', 'Melhores músicas de hip-hop'),
(5, 'Dance Hits', 'As melhores músicas eletrônicas para dançar');

INSERT INTO Musicas (titulo, artista_id) VALUES
('Música 1', 1),
('Música 2', 1),
('Música 3', 2),
('Música 4', 3),
('Música 5', 4),
('Música 6', 5),
('Música 7', 1),
('Música 8', 2),
('Música 9', 3),
('Música 10', 4);

SHOW VARIABLES LIKE 'datadir';
