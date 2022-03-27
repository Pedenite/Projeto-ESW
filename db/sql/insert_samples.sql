PRAGMA foreign_keys = ON;

insert into usuario (nome, email, senha)
    values  ('Kesley Kenny', 'kesley.kenny.kk@gmail.com', 'yelsek24'),
            ('Pedro Agnes', 'pedenite@gmail.com', '12345'),
            ('Pedro Pessoa', 'pedropessoaramos@gmail.com', '67890'),
            ('Robertone Testador', "rt@esw.br", 'esw69420');

insert into excursao (titulo, cidade, duracao_mins, descricao, endereco, guia)
    values  ("Visita ao lago paranoá", 'Brasília', 120, '', 'lago paranoá', 'kesley.kenny.kk@gmail.com'),
            ("Vendo o Cristo Redentor", 'Rio de Janeiro', 180, 'subindo o morro do cristo redentor para visualizar a paisagem do rio de janeiro', 'Cristo redentor', 'pedenite@gmail.com'),
            ("Mergulhando no lixão", null, null, null, null, 'pedropessoaramos@gmail.com');

insert into avaliacao (nota, descricao, usuario_email, excursao_codigo)
    values  (7, "bom", "rt@esw.br", 1),
            (5, "cansativo", 'rt@esw.br', 2),
            (0, 'lixo, literalmente', 'rt@esw.br', 3),
            (10, null, 'pedropessoaramos@gmail.com', 3),
            (9, null, 'kesley.kenny.kk@gmail.com', 2);

insert into sessao (data, horario, idioma, excursao_codigo)
    values  ('2023-01-01', '10h', 'pt-br', 1),
            ('2022-05-03', '8h', 'en', 2);
