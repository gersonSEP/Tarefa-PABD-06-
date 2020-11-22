CREATE FUNCTION total_milhas(cod_cliente INTEGER)
RETURNS INTEGER
AS $$
DECLARE
total INTEGER;
BEGIN
SELECT total SUM(mi.quantidade)
FROM milhas mi;
RETURN total;
END;
$$ LANGUAGE plpgsql;
