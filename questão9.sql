CREATE FUNCTION piloto_voos(cod_piloto INTEGER)
RETURNS table(nome CHARACTER VARYING, milhas INTEGER)
AS $$
BEGIN
SELECT nome, num_voos
FROM piloto
WHERE piloto.codigo=cod_piloto;
END;
$$ LANGUAGE sql;
