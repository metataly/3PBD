-- ESPECIALIDADES
INSERT INTO Especialidade (nome) VALUES 
('Cabelereiro'),
('Facial'),
('Corporal'),
('Manicure e Pedicure');

-- CLIENTES
INSERT INTO Cliente (nome, cpf, telefone, email) VALUES 
('Ana Paula', '123.456.789-00', '21999999999', 'ana@example.com'),
('Beatriz Silva', '987.654.321-00', '21888888888', 'bia@example.com');

-- PROFISSIONAIS
INSERT INTO Profissional (nome, id_especialidade) VALUES 
('Carlos Cabelo', 1),
('Fernanda Esteticista', 2),
('Joana Massoterapeuta', 3),
('Maria Unhas', 4);

-- SERVIÇOS
INSERT INTO Servico (nome, descricao, duracao_minutos, preco, id_especialidade) VALUES 
('Corte Feminino', 'Corte profissional de cabelo feminino', 60, 80.00, 1),
('Limpeza de Pele', 'Limpeza profunda com produtos dermatológicos', 90, 150.00, 2),
('Massagem Relaxante', 'Massagem corporal de relaxamento', 60, 120.00, 3),
('Manicure Completa', 'Corte, lixamento, esmaltação', 45, 50.00, 4);

-- PACOTES
INSERT INTO Pacote (nome, descricao, preco) VALUES 
('Dia de Beleza', 'Corte + Massagem + Manicure', 220.00);

-- ITENS DO PACOTE
INSERT INTO Pacote_Servico (id_pacote, id_servico) VALUES 
(1, 1), -- Corte
(1, 3), -- Massagem
(1, 4); -- Manicure

-- RESERVAS
INSERT INTO Reserva (id_cliente, id_profissional, id_servico, data, horario, status) VALUES 
(1, 1, 1, '2025-05-30', '10:00:00', 'Agendada'),
(2, 2, 2, '2025-05-30', '11:00:00', 'Agendada');

-- RESERVA COM PACOTE
INSERT INTO Reserva (id_cliente, id_pacote, data, horario, status) VALUES 
(1, 1, '2025-06-01', '09:00:00', 'Agendada');

-- PAGAMENTOS
INSERT INTO Pagamento (id_reserva, valor, data_pagamento, metodo_pagamento) VALUES 
(1, 80.00, '2025-05-27', 'CartaoCredito'),
(2, 150.00, '2025-05-27', 'CartaoDebito'),
(3, 220.00, '2025-05-27', 'Dinheiro');

-- FILA DE ESPERA
INSERT INTO Fila_Espera (id_cliente, id_especialidade, data, horario_solicitacao) VALUES 
(2, 1, '2025-05-30', '09:30:00');
