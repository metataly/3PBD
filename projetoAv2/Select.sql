-- Selecionar todos os clientes
SELECT * FROM Cliente;

-- Selecionar um cliente específico pelo email
SELECT * FROM Cliente
WHERE Email = 'joao@email.com';

-- Selecionar todos os quartos
SELECT * FROM Quarto;

-- Selecionar quartos com banheiro e capacidade 4 (regra: filtro no momento da reserva)
SELECT * FROM Quarto
WHERE Banheiro = 'Sim' AND Qtd_Vagas = 4;

-- Selecionar todas as vagas
SELECT * FROM Vaga;

-- Selecionar todas as vagas de um quarto específico (ex: Quarto 1)
SELECT * FROM Vaga
WHERE Id_Quarto = 1;

-- Selecionar uma vaga específica com critérios de conforto
SELECT * FROM Vaga
WHERE Tipo_Cama = 'Beliche_Inferior' AND Sol = 'Sol_Manha'
LIMIT 1;

-- Selecionar todas as reservas
SELECT * FROM Reserva;

-- Selecionar uma reserva específica com detalhes do cliente
SELECT R.*, C.Nome, C.Email
FROM Reserva R
JOIN Cliente C ON R.Id_Cliente = C.Id_Cliente
WHERE R.Id_Reserva = 1;

-- Selecionar todas as reservas ativas de um cliente
SELECT R.*
FROM Reserva R
WHERE R.Id_Cliente = 1 AND R.Status = 'Ativa';

-- Selecionar todos os pagamentos
SELECT * FROM Pagamento;

-- Selecionar pagamento da reserva 1 com status
SELECT P.*
FROM Pagamento P
WHERE P.Id_Reserva = 1;

-- Selecionar todas as vagas de uma reserva
SELECT V.*, Q.Numero AS Numero_Quarto
FROM ReservaVaga RV
JOIN Vaga V ON RV.Id_Vaga = V.Id_Vaga
JOIN Quarto Q ON V.Id_Quarto = Q.Id_Quarto
WHERE RV.Id_Reserva = 1;

-- Selecionar todas as reservas feitas para uma determinada vaga
SELECT R.*, C.Nome AS Cliente
FROM Reserva R
JOIN ReservaVaga RV ON R.Id_Reserva = RV.Id_Reserva
JOIN Cliente C ON R.Id_Cliente = C.Id_Cliente
WHERE RV.Id_Vaga = 1;
