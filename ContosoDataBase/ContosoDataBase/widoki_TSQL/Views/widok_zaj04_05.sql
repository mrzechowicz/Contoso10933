	CREATE VIEW [widoki_TSQL].[widok_zaj04_05]
	WITH SCHEMABINDING
	AS
	SELECT	
			fm.[CostAmount]
		  ,	fm.[CostType]
		  ,	dd.[FullDateLabel]
		  ,	dm.[MachineLabel]
		  ,	dm.[MachineType]	  
		  ,	ds.[StoreType]
		  ,	ds.[StoreName]
		  ,	de.[EntityLabel]
		  ,	de.[EntityType]
		  ,	dg.[CityName]
	FROM 
				[dbo].[FactITMachine]	AS fm
	INNER JOIN	[dbo].[DimDate]			AS dd ON [dd].[Datekey]			= [fm].[Datekey]
	INNER JOIN  [dbo].[DimMachine]		AS dm ON [dm].[MachineKey]		= [fm].[MachineKey]
	INNER JOIN	[dbo].[DimStore]		AS ds ON [ds].[StoreKey]		= [dm].[StoreKey]
	INNER JOIN	[dbo].[DimEntity]		AS de ON [de].[EntityKey]		= [ds].[EntityKey]
	INNER JOIN	[dbo].[DimGeography]	AS dg ON [dg].[GeographyKey]	= [ds].[GeographyKey]
GO
CREATE UNIQUE CLUSTERED INDEX [widok_zaj04_IDX]
    ON [widoki_TSQL].[widok_zaj04_05]([CostType] ASC, [FullDateLabel] ASC, [MachineLabel] ASC, [MachineType] ASC, [StoreType] ASC, [StoreName] ASC, [EntityLabel] ASC, [EntityType] ASC, [CityName] ASC);

