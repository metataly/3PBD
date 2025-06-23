-- Inserts 
INSERT INTO Cliente (Nome, Email, Telefone, Tipo_Cliente)
VALUES 
  ('João Silva', 'joao@email.com', '11999999999', 'Estudante'),
  ('Maria Costa', 'maria@email.com', '11988888888', 'Turista');

INSERT INTO Quarto (Numero, Qtd_Vagas, Banheiro)
VALUES 
  (101, 4, 'Sim'),
  (102, 8, 'Não'),
  (103, 12, 'Sim');

INSERT INTO Vaga (Id_Quarto, Tipo_Cama, Posicao, Sol, Observacao)
VALUES 
  (1, 'Beliche_Inferior', 'Janela', 'Sol_Manha', 'Vista para o jardim'),
  (1, 'Beliche_Superior', 'Porta', 'Sem_Sol', 'Próximo à porta'),
  (2, 'Beliche_Inferior', 'Centro', 'Sol_Tarde', 'Ventilador próximo'),
  (3, 'Cama_Simples', 'Janela', 'Muito_Sol', 'Janela grande');

INSERT INTO Reserva (Id_Cliente, Inicio, Fim, Status, Data_reserva, Valor)
VALUES 
  (1, '2025-07-01', '2025-07-05', 'Ativa', '2025-06-25', 500.00),
  (2, '2025-07-10', '2025-07-15', 'Ativa', '2025-06-28', 600.00);

INSERT INTO Reserva_Vaga (Id_Reserva, Id_Vaga)
VALUES 
  (1, 1),
  (1, 2),
  (2, 3);


INSERT INTO Pagamento (Id_Reserva, Data_pag, Forma_pag, Status_pag)
VALUES 
  (1, '2025-06-26', 'Cartao_Credito', 'Pago'),
  (2, '2025-06-29', 'Cartao_Credito', 'Pago');


--Update
UPDATE Cliente
SET Telefone = '11977777777', Tipo_Cliente = 'Turista'
WHERE Id_Cliente = 1;

UPDATE Quarto
SET Qtd_Vagas = 8, Banheiro = 'Não'
WHERE Id_Quarto = 1;

UPDATE Vaga
SET Posicao = 'Centro', Observacao = 'Agora fica próxima ao ventilador'
WHERE Id_Vaga = 1;

UPDATE Reserva
SET Status = 'Finalizada', Valor = 550.00
WHERE Id_Reserva = 1;

UPDATE Pagamento
SET Status_pag = 'Cancelado'
WHERE Id_Reserva = 1;


--Delete
DELETE FROM Reserva_Vaga
WHERE Id_Reserva = 1;

DELETE FROM Pagamento
WHERE Id_Reserva = 1;

DELETE FROM Reserva
WHERE Id_Reserva = 1;

DELETE FROM Vaga
WHERE Id_Vaga = 1;

DELETE FROM Quarto
WHERE Id_Quarto = 1;

DELETE FROM Cliente
WHERE Id_Cliente = 1;

