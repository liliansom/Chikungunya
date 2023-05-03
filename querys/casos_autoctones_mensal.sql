-- Casos confirmados autóctones

-- 2022
SELECT Municipio, 
		SUM(Janeiro_Autoc), 
        SUM(Fevereiro_Autoc),
        SUM(Março_Autoc),
        SUM(Abril_Autoc),
        SUM(Maio_Autoc),
        SUM(Junho_Autoc),
        SUM(Julho_Autoc),
        SUM(Agosto_Autoc),
        SUM(Setembro_Autoc),
        SUM(Outubro_Autoc),
        SUM(Novembro_Autoc),
        SUM(Dezembro_Autoc)
FROM fact_casos_conf_auto_mensal_2022
WHERE Janeiro_Autoc > 0 OR
		Fevereiro_Autoc > 0 OR
        Março_Autoc > 0 OR
        Abril_Autoc > 0 OR
        Maio_Autoc > 0 OR
		Junho_Autoc > 0 OR
        Julho_Autoc > 0 OR
        Agosto_Autoc > 0 OR
        Setembro_Autoc > 0 OR
        Outubro_Autoc > 0 OR
        Novembro_Autoc > 0 OR
        Dezembro_Autoc
GROUP BY Municipio;

-- 2023
SELECT Municipio, 
		SUM(Janeiro_Autoc), 
        SUM(Fevereiro_Autoc),
        SUM(Março_Autoc)
FROM fact_casos_conf_auto_mensal_2023
WHERE Janeiro_Autoc > 0 OR
		Fevereiro_Autoc > 0 OR
        Março_Autoc > 0
GROUP BY Municipio;
