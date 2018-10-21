	CREATE VIEW [widoki_TSQL].[widok_zaj04_02]
	AS
	SELECT  
	dd.CalendarYear,
	sum(fm.CostAmount) as [Annual Maintenance Cost]
	
		FROM 
				[dbo].[FactITMachine]	AS fm
	INNER JOIN	[dbo].[DimDate]			AS dd ON [dd].[Datekey]			= [fm].[Datekey]
	INNER JOIN  [dbo].[DimMachine]		AS dm ON [dm].[MachineKey]		= [fm].[MachineKey]
	WHERE dm.VendorName='Fabrikam, Inc.'
	GROUP BY dd.CalendarYear