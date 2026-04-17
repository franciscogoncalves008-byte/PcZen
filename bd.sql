-- Cria a base de dados do PcZen
CREATE DATABASE IF NOT EXISTS pczen
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE pczen;

-- Tabela para guardar os contactos enviados pelo formulário
CREATE TABLE IF NOT EXISTS contactos (
    id          INT AUTO_INCREMENT PRIMARY KEY,
    nome        VARCHAR(100)  NOT NULL,
    email       VARCHAR(150)  NOT NULL,
    assunto     VARCHAR(200)  NOT NULL,
    mensagem    TEXT          NOT NULL,
    data_envio  DATETIME      DEFAULT CURRENT_TIMESTAMP
);

-- Tabela para guardar as avaliações dos utilizadores
CREATE TABLE IF NOT EXISTS avaliacoes (
    id             INT AUTO_INCREMENT PRIMARY KEY,
    nome           VARCHAR(100) NOT NULL,
    classificacao  TINYINT      NOT NULL,
    texto          TEXT         NOT NULL,
    data_envio     DATETIME     DEFAULT CURRENT_TIMESTAMP
);
