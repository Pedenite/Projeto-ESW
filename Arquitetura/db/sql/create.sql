PRAGMA foreign_keys = ON;

create table usuario (
    nome text not null,
    email text primary key,
    senha text not null
);

create table excursao (
    codigo integer primary key autoincrement,
    titulo text not null,
    cidade text,
    duracao_mins integer,
    descricao text,
    endereco text,
    guia text not null,
    foreign key (guia) references usuario(email) on delete cascade
);

create table avaliacao (
    codigo integer primary key autoincrement,
    nota real not null,
    descricao text,
    usuario_email text not null,
    excursao_codigo integer not null,
    foreign key (usuario_email) references usuario(email) on delete cascade,
    foreign key (excursao_codigo) references excursao(codigo) on delete cascade
);

create table sessao (
    codigo integer primary key autoincrement,
    data text not null,
    horario text not null,
    idioma text,
    excursao_codigo integer not null,
    foreign key (excursao_codigo) references excursao(codigo) on delete cascade
);
