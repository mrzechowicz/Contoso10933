	CREATE VIEW [widoki_TSQL].[widok_zaj04_04]
	AS
	SELECT TOP 10 
	RANK() OVER (ORDER BY sum(fm.CostAmount)  DESC) as [RANK],
	ds.StoreName,
	sum(fm.CostAmount) as TotalCost
		FROM 
				[dbo].[FactITMachine]	AS fm
	INNER JOIN	[dbo].[DimDate]			AS dd ON [dd].[Datekey]			= [fm].[Datekey]
	INNER JOIN  [dbo].[DimMachine]		AS dm ON [dm].[MachineKey]		= [fm].[MachineKey]
	INNER JOIN	[dbo].[DimStore]		AS ds ON [ds].[StoreKey]		= [dm].[StoreKey]
	INNER JOIN	[dbo].[DimGeography]	AS dg ON [dg].[GeographyKey]	= [ds].[GeographyKey]
	WHERE dg.ContinentName = 'Europe'
	GROUP BY 
	ds.StoreName
	ORDER BY TotalCost desc