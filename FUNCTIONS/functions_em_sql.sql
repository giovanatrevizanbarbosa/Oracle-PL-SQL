SELECT
    est_nome,
    est_precovenda preco_venda,
    calculo(est_precovenda) preco_mais_20
FROM estoque;