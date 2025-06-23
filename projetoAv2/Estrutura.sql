CREATE TABLE Cliente (
    Id_Cliente INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Telefone VARCHAR(20),
    Tipo_Cliente ENUM('Estudante', 'Turista') NOT NULL
);

CREATE TABLE Quarto (
    Id_Quarto INT PRIMARY KEY AUTO_INCREMENT,
    Numero INT NOT NULL,
    Qtd_Vagas INT NOT NULL CHECK (Qtd_Vagas IN (4, 8, 12)),
    Banheiro ENUM('Sim', 'Não') NOT NULL
);

CREATE TABLE Vaga (
    Id_Vaga INT PRIMARY KEY AUTO_INCREMENT,
    Id_Quarto INT NOT NULL,
    Tipo_Cama ENUM('Beliche_Superior', 'Beliche_Inferior', 'Cama_Simples') NOT NULL,
    Posicao ENUM('Janela', 'Porta', 'Centro') NOT NULL,
    Sol ENUM('Sol_Manha', 'Sem_Sol', 'Sol_Tarde', 'Muito_Sol') NOT NULL,
    Observacao TEXT,
    FOREIGN KEY (Id_Quarto) REFERENCES Quarto(Id_Quarto)
);

CREATE TABLE Reserva (
    Id_Reserva INT PRIMARY KEY AUTO_INCREMENT,
    Id_Cliente INT NOT NULL,
    Inicio DATE NOT NULL,
    Fim DATE NOT NULL,
    Status ENUM('Ativa', 'Cancelada', 'Finalizada') NOT NULL,
    Data_reserva DATE NOT NULL,
    Valor DOUBLE,
    FOREIGN KEY (Id_Cliente) REFERENCES Cliente(Id_Cliente)
);

CREATE TABLE Pagamento (
    Id_Pagamento INT PRIMARY KEY AUTO_INCREMENT,
    Id_Reserva INT UNIQUE NOT NULL,
    Data_pag DATE NOT NULL,
    Forma_pag VARCHAR(20) NOT NULL DEFAULT 'Cartao_Credito',
    Status_pag ENUM('Pago', 'Pendente', 'Cancelado') NOT NULL,
    FOREIGN KEY (Id_Reserva) REFERENCES Reserva(Id_Reserva)
);

CREATE TABLE Reserva_Vaga (
    Id_Reserva INT NOT NULL,
    Id_Vaga INT NOT NULL,
    PRIMARY KEY (Id_Reserva, Id_Vaga),
    FOREIGN KEY (Id_Reserva) REFERENCES Reserva(Id_Reserva),
    FOREIGN KEY (Id_Vaga) REFERENCES Vaga(Id_Vaga)
);
