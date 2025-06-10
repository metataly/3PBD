--Lisatr profissional
SELECT 
    p.id_profissional,
    p.nome AS nome_profissional,
    r.data,
    r.horario,
    c.nome AS nome_cliente,
    s.nome AS servico
FROM 
    reserva r
JOIN 
    profissional p ON r.id_profissional = p.id_profissional
JOIN 
    cliente c ON r.id_cliente = c.id_cliente
LEFT JOIN 
    servico s ON r.id_servico = s.id_servico
WHERE 
    r.status = 'Agendada'
ORDER BY 
    p.nome, r.data, r.horario;

----------------------------------

-- agenda livre do profissional
WITH horarios_possiveis AS (
    SELECT MAKETIME(h, 0, 0) AS horario
    FROM (
        SELECT 8 AS h UNION SELECT 9 UNION SELECT 10 UNION SELECT 11 UNION 
        SELECT 12 UNION SELECT 13 UNION SELECT 14 UNION SELECT 15 UNION SELECT 16
    ) AS horas
)

SELECT 
    hp.horario
FROM 
    horarios_possiveis hp
LEFT JOIN 
    reserva r ON r.horario = hp.horario 
              AND r.data = '2025-06-12'
              AND r.id_profissional = 1
              AND r.status = 'Agendada'
WHERE 
    r.id_reserva IS NULL;
