use ibm_rh;
WITH Faixa_Etária AS(
	SELECT  *,
		CASE WHEN Age >= 18 AND Age <= 24 THEN 'Jovem' 
			WHEN Age >= 25 AND Age <= 44 THEN 'Adultos'
			WHEN Age >= 45 AND Age <= 64 THEN 'Maturidade'
			ELSE 'Idoso' END AS FaixaEtária,
		CASE WHEN YearsAtCompany >= 0 AND YearsAtCompany <= 3 THEN 'Júnior'
			WHEN YearsAtCompany >= 4 AND YearsAtCompany <= 9 THEN 'Pleno'
            ELSE 'Sênior' END AS Sênioridade
	FROM dtbs
),
TempoMédio AS(
	SELECT Department, FaixaEtária,
		ROUND(AVG(YearsAtCompany), 2) AS TempoMédioCasa
	FROM Faixa_Etária
	GROUP BY Department, FaixaEtária
),
MediaIdadeCargo AS (
	SELECT JobRole,
		ROUND(AVG(Age), 2) AS MédiaIdade
	FROM dtbs
	GROUP BY JobRole
)

SELECT *
FROM Faixa_Etária AS t1
	JOIN TempoMédio AS t2
		ON t1.FaixaEtária = t2.FaixaEtária
        AND t1.Department = t2.Department
	JOIN MediaIdadeCargo AS t3
		ON t1.JobRole = t3.JobRole;