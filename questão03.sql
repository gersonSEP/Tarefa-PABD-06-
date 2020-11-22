CREATE FUNCTION total_voos(cod_cliente INTEGER)
RETURNS INTEGER
AS $$
DECLARE
total INTEGER;
BEGIN
SELECT INTO total COUNT(*)
FROM cliente_voo cv
WHERE cv.cliente=cod_cliente;
RETURN total;
END;
$$ LANGUAGE plpgsql;
