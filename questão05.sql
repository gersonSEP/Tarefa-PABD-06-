CREATE FUNCTION cliente_milha_500(cod_cliente INTEGER)
RETURNS INTEGER
AS $$
DECLARE
total INTEGER;
BEGIN
SELECT total COUNT(*)
FROM milhas mi
WHERE mi.quantidade>500;
RETURN total;
END;
$$ LANGUAGE plpgsql;
