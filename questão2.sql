DELIMITER $
CREATE OR REPLACE FUNCTION classe_cliente(INT codigo_voo, INT codigo_cliente) 
RETURNS VARCHAR(80)
BEGIN
SET @classe := (SELECT INTO @classe cl.classe
FROM cliente_voo cv
WHERE cv.voo=cod_voo
AND cod_cliente=cv.cliente;
RETURN 

END $
DELIMITER;
