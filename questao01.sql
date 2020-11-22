DELIMITER $
CREATE OR REPLACE FUNCTION qtd_passageiros(INT codigo) RETURNS INT
BEGIN
SET @quantidade := (SELECT num_passageiros WHERE 
voo.codigo = codigo);
RETURN @quantidade;
END $
DELIMITER;
