-- Casos confirmados importados

-- 2022
SELECT Municipio, 
		SUM(Janeiro_Import), 
        SUM(Fevereiro_Import),
        SUM(Março_Import),
        SUM(Abril_Import),
        SUM(Maio_Import),
        SUM(Junho_Import),
        SUM(Julho_Import),
        SUM(Agosto_Import),
        SUM(Setembro_Import),
        SUM(Outubro_Import),
        SUM(Novembro_Import),
        SUM(Dezembro_Import)
FROM fact_casos_conf_import_mensal_2022
WHERE Janeiro_Import > 0 OR
		Fevereiro_Import > 0 OR
        Março_Import> 0 OR
        Abril_Import > 0 OR
        Maio_Import> 0 OR
		Junho_Import> 0 OR
        Julho_Import> 0 OR
        Agosto_Import> 0 OR
        Setembro_Import> 0 OR
        Outubro_Import> 0 OR
        Novembro_Import> 0 OR
        Dezembro_Import
GROUP BY Municipio;

-- 2023
SELECT Municipio, 
		SUM(Janeiro_Import), 
        SUM(Fevereiro_Import),
        SUM(Março_Import)
FROM fact_casos_conf_import_mensal_2023
WHERE Janeiro_Import > 0 OR
		Fevereiro_Import > 0 OR
		Março_Import > 0
GROUP BY Municipio;