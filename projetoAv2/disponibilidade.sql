--Disponíveis
SELECT
    v.Id_Vaga,
    v.Tipo_Cama,
    v.Posicao,
    v.Sol,
    v.Observacao,
    q.Numero AS Numero_Quarto,
    q.Banheiro
FROM
    Vaga v
    JOIN Quarto q ON v.Id_Quarto = q.Id_Quarto
WHERE
    NOT EXISTS (
        SELECT 1
        FROM Reserva_Vaga rv
        JOIN Reserva r ON rv.Id_Reserva = r.Id_Reserva
        WHERE
            rv.Id_Vaga = v.Id_Vaga
            AND r.Status != 'Cancelada'
            AND r.Inicio <= '2025-07-10'
            AND r.Fim >= '2025-07-20'
    )
ORDER BY
    q.Numero,
    v.Id_Vaga;

--Reservadas
SELECT
    r.Id_Reserva,
    v.Id_Vaga,
    q.Numero AS Numero_Quarto,
    r.Inicio,
    r.Fim,
    r.Status
FROM
    Reserva_Vaga rv
    JOIN Reserva r ON rv.Id_Reserva = r.Id_Reserva
    JOIN Vaga v ON rv.Id_Vaga = v.Id_Vaga
    JOIN Quarto q ON v.Id_Quarto = q.Id_Quarto
WHERE
    r.Status != 'Cancelada'
    AND r.Inicio <= '2025-06-20'
    AND r.Fim >= '2025-06-25'
ORDER BY
    r.Inicio;
