SELECT * FROM Cliente;

SELECT * FROM Cliente
WHERE Email = 'joao@email.com';

SELECT * FROM Quarto;

SELECT * FROM Quarto
WHERE Banheiro = 'Sim' AND Qtd_Vagas = 4;

SELECT * FROM Vaga;

SELECT * FROM Vaga
WHERE Id_Quarto = 1;

SELECT * FROM Vaga
WHERE Tipo_Cama = 'Beliche_Inferior' AND Sol = 'Sol_Manha'
LIMIT 1;

SELECT * FROM Reserva;

SELECT R.*, C.Nome, C.Email
FROM Reserva R
JOIN Cliente C ON R.Id_Cliente = C.Id_Cliente
WHERE R.Id_Reserva = 1;

SELECT R.*
FROM Reserva R
WHERE R.Id_Cliente = 1 AND R.Status = 'Ativa';

SELECT * FROM Pagamento;

SELECT P.*
FROM Pagamento P
WHERE P.Id_Reserva = 1;

SELECT V.*, Q.Numero AS Numero_Quarto
FROM Reserva_Vaga RV
JOIN Vaga V ON RV.Id_Vaga = V.Id_Vaga
JOIN Quarto Q ON V.Id_Quarto = Q.Id_Quarto
WHERE RV.Id_Reserva = 1;

SELECT R.*, C.Nome AS Cliente
FROM Reserva R
JOIN Reserva_Vaga RV ON R.Id_Reserva = RV.Id_Reserva
JOIN Cliente C ON R.Id_Cliente = C.Id_Cliente
WHERE RV.Id_Vaga = 1;
