USE exercicio_2;

CREATE TABLE conta_bancaria(
	codigo INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
	titular VARCHAR(32) NOT NULL,
	saldo DOUBLE NOT NULL,
	PRIMARY KEY (codigo)
) engine = InnoDB;

INSERT INTO conta_bancaria VALUES (1, 'André', 213);
INSERT INTO conta_bancaria VALUES (2, 'Diogo', 489);
INSERT INTO conta_bancaria VALUES (3, 'Rafael', 568);
INSERT INTO conta_bancaria VALUES (4, 'Carlos', 712);
INSERT INTO conta_bancaria VALUES (5, 'Peter', -38);

start transaction;
UPDATE conta_bancaria SET saldo = saldo + (saldo * 0.03) WHERE saldo > 0;
rollback;
commit;

SELECT * FROM conta_bancaria;