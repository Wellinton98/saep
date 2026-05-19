create database padoca;


CREATE TABLE `funcionario` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);


CREATE TABLE `produto` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(255) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `estoque_minimo` bigint(20) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
);


CREATE TABLE `movimentacao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `funcionario` bigint(20) NOT NULL,
  `produto_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT Fk_movimentacao_profuto FOREIGN KEY (`produto_id`) REFERENCES `produto` (`id`),
  CONSTRAINT FK_produto_funcionario FOREIGN KEY (`funcionario`) REFERENCES `funcionario` (`id`)
);

insert into funcionario (nome, login, senha) values
("Neymar jr", "neymar", "1234"),
("endrik", "endrik", "12345"),
("wevweton", "Wevweton", "123456"),
("wellinton", "wellinton", "123");

INSERT INTO produto (nome, descricao, categoria, estoque_minimo, quantidade) VALUES
("Pão francês", "Pão francês fresquinho", "Pães", 50, 100),
("Pão de queijo", "Pão de queijo quentinho", "Pães", 30, 60),
("Bolo de chocolate", "Bolo de chocolate delicioso", "Bolos", 20, 40),
("Croissant", "Croissant amanteigado", "Pães", 25, 50);

INSERT INTO movimentacao