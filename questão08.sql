CREATE FUNCTION nome_milhas(cod_cliente INTEGER)
RETURNS TABLE(nome CHARACTER VARYING, milhas INTEGER)
AS $$
BEGIN
SELECT cl.nome, mi.quantidade
FROM cliente cl, milhas mi
WHERE cl.codigo=cod_cliente
AND mi.cliente=cod_cliente;
END;
$$ LANGUAGE sql;
