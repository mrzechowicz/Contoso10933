	CREATE VIEW [widoki_TSQL].[widok_zaj04_01]
	AS
	SELECT 
	dd.CalendarMonthLabel, 
	sum(fm.CostAmount) as [Annual Maintenance Cost]
	FROM 
				[dbo].[FactITMachine]	AS fm
	INNER JOIN	[dbo].[DimDate]			AS dd ON [dd].[Datekey]			= [fm].[Datekey]
	WHERE CostType = 'Annual Maintenance Cost'
	GROUP BY dd.CalendarMonthLabel