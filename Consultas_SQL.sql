--PREGUNTA 1
--¿Qué día de la semana (lunes-domingo) de la temporada 2024-T1 (Abril-Junio del 2024) tuvo mayor 
--índice diario de rendimiento de producción de harina de pescado?
SELECT 
    CASE 
        WHEN DATENAME(WEEKDAY, Fecha_Produccion) = 'Sunday' THEN '01-domingo'
        WHEN DATENAME(WEEKDAY, Fecha_Produccion) = 'Monday' THEN '02-lunes'
        WHEN DATENAME(WEEKDAY, Fecha_Produccion) = 'Tuesday' THEN '03-martes'
        WHEN DATENAME(WEEKDAY, Fecha_Produccion) = 'Wednesday' THEN '04-miercoles'
        WHEN DATENAME(WEEKDAY, Fecha_Produccion) = 'Thursday' THEN '05-jueves'
        WHEN DATENAME(WEEKDAY, Fecha_Produccion) = 'Friday' THEN '06-viernes'
        WHEN DATENAME(WEEKDAY, Fecha_Produccion) = 'Saturday' THEN '07-sábado'
    END AS Dia_Semana,
    convert(decimal(12,3), sum(convert(decimal(12,4),cantidad_producida)) / sum(convert(decimal(12,4),cantidad_procesada)) * 100) AS Rendimiento_Harina_Pescado
FROM 
    [grupo03].[produccion_diaria]
WHERE 
    AnioTemp = '2024-T1'
GROUP BY 
     DATENAME(WEEKDAY, Fecha_Produccion)
ORDER BY 
    Rendimiento_Harina_Pescado DESC;

--PREGUNTA 2
--¿Cuál es el top 10 de fechas (día-mes-año) en los que se obtuvo mayor y menor índice diario de rendimiento de 
--producción de harina de pescado durante el 2023?
SELECT TOP 10
    CONVERT(VARCHAR(10), Fecha_Produccion, 103) AS Fecha_Produccion,
    convert(decimal(12,3), sum(convert(decimal(12,4),cantidad_producida)) / sum(convert(decimal(12,4),cantidad_procesada)) * 100) AS Rendimiento_Harina_Pescado
FROM 
    [grupo03].[produccion_diaria]
WHERE 
    YEAR(Fecha_Produccion) = 2023
GROUP BY 
    Fecha_Produccion
ORDER BY 
    Rendimiento_Harina_Pescado DESC;

--PREGUNTA 3
--¿Cuál es el promedio de índice diario de producción de harina de pescado obtenido durante la 
--temporada 2023-T1, 2023-T2 y 2024-T1?
SELECT 
    convert(decimal(12,3),AVG(Rendimiento_Harina_Pescado)) AS Indicador_Rendimiento
FROM (
    SELECT 
        AnioTemp AS Temporada, 
        convert(decimal(12,3), sum(convert(decimal(12,4), cantidad_producida)) / sum(convert(decimal(12,4), cantidad_procesada)) * 100) AS Rendimiento_Harina_Pescado
    FROM 
        grupo03.produccion_diaria
    WHERE
        AnioTemp <> '2024-T2'
    GROUP BY 
        AnioTemp
) AS Subquery;

--PREGUNTA 4
--¿Qué mes del 2023 tuvo mayor índice diario de rendimiento de producción de harina de pescado?
SELECT TOP 12
    CASE 
        WHEN DATENAME(MONTH, Fecha_Produccion) = 'January' THEN '01-enero'
                WHEN DATENAME(MONTH, Fecha_Produccion) = 'February' THEN '02-febrero'
                WHEN DATENAME(MONTH, Fecha_Produccion) = 'March' THEN '03-marzo'
                WHEN DATENAME(MONTH, Fecha_Produccion) = 'April' THEN '04-abril'
                WHEN DATENAME(MONTH, Fecha_Produccion) = 'May' THEN '05-mayo'
                WHEN DATENAME(MONTH, Fecha_Produccion) = 'June' THEN '06-junio'
                WHEN DATENAME(MONTH, Fecha_Produccion) = 'July' THEN '07-julio'
                WHEN DATENAME(MONTH, Fecha_Produccion) = 'August' THEN '08-agosto'
                WHEN DATENAME(MONTH, Fecha_Produccion) = 'September' THEN '09-septiembre'
                WHEN DATENAME(MONTH, Fecha_Produccion) = 'October' THEN '10-octubre'
                WHEN DATENAME(MONTH, Fecha_Produccion) = 'November' THEN '11-noviembre'
                WHEN DATENAME(MONTH, Fecha_Produccion) = 'December' THEN '12-diciembre'
    END AS Mes,
    convert(decimal(12,3), sum(convert(decimal(12,4),cantidad_producida)) / sum(convert(decimal(12,4),cantidad_procesada)) * 100) AS Rendimiento_Harina_Pescado
FROM 
    [grupo03].[produccion_diaria]
WHERE 
        YEAR(Fecha_Produccion) = 2023 
GROUP BY 
    DATENAME(YEAR, fecha_produccion),
    DATENAME(MONTH, fecha_produccion),
    DATEPART(YEAR, fecha_produccion),
    DATEPART(MONTH, fecha_produccion)        
ORDER BY 
    Rendimiento_Harina_Pescado DESC;

--PREGUNTA 5
--¿En cuánto varió el índice diario de producción de harina de pescado entre la temporada 1 del 2023 y 
--la temporada 1 del 2024?
DECLARE @rendimiento2023T1 DECIMAL(12, 3);
        SET @rendimiento2023T1 = (
                SELECT
                        convert(decimal(12,3), sum(convert(decimal(12,4),cantidad_producida)) / sum(convert(decimal(12,4),cantidad_procesada)) * 100) AS Rendimiento_Harina_Pescado
                FROM 
                        [grupo03].[produccion_diaria]
                WHERE 
        AnioTemp = '2023-T1' 
        );
        DECLARE @rendimiento2024T1 DECIMAL(12, 3);
        SET @rendimiento2024T1 = (
                SELECT
                        convert(decimal(12,3), sum(convert(decimal(12,4),cantidad_producida)) / sum(convert(decimal(12,4),cantidad_procesada)) * 100) AS Rendimiento_Harina_Pescado
                FROM 
                        [grupo03].[produccion_diaria]
                WHERE 
        AnioTemp = '2024-T1' 
        );

        PRINT 'Indicador_Rendimiento 2023-T1: ' + CAST(@rendimiento2023T1 AS VARCHAR(10)) + '%';
        PRINT 'Indicador_Rendimiento 2024-T1: ' + CAST(@rendimiento2024T1 AS VARCHAR(10)) + '%';
        PRINT 'Diferencia 2023-2024: ' + CAST(@rendimiento2024T1 - @rendimiento2023T1 AS VARCHAR(10)) + '%';

--PREGUNTA 6
--Qué planta tuvo mayor índice diario de rendimiento de producción de harina de pescado durante el 2023?
SELECT 
    p.Nombre_Planta AS Plamta,
    convert(decimal(12,3), sum(convert(decimal(12,4),cantidad_producida)) / sum(convert(decimal(12,4),cantidad_procesada)) * 100) AS Rendimiento_Harina_Pescado
FROM 
    [grupo03].[produccion_diaria] pd
JOIN 
    [grupo03].[planta] p ON pd.ID_Planta = p.ID_Planta
WHERE 
    YEAR(pd.Fecha_Produccion) = 2023
GROUP BY 
    p.Nombre_Planta
ORDER BY 
    Rendimiento_Harina_Pescado DESC;

--PREGUNTA 7
--¿Cuál es el TOP 5 de clientes a los que se les vendió mayor cantidad de toneladas de harina de pescado 
--durante la temporada 1 (Abril- Junio) del 2024?
SELECT TOP 5
    c.Razon_Social AS Nombre_Cliente,
    convert(decimal(12,3),SUM(Cantidad_Vendida)) AS Total_Toneladas_Vendidas
FROM 
    [grupo03].[venta] v
JOIN 
    [grupo03].[cliente] c ON v.ID_Cliente = c.ID_Cliente
WHERE 
    v.AnioTemp = '2024-T1'
GROUP BY 
    c.Razon_Social
ORDER BY 
    Total_Toneladas_Vendidas DESC

--PREGUNTA 8
--¿Qué porcentaje del total de días de producción del 2023 no sobrepasó el mínimo esperado de indicador de 
--rendimiento (23.5%) separado por planta?
WITH rendimiento AS (
    SELECT 
        pr.ID_Planta,
                SUM(CONVERT(DECIMAL(12, 4), pr.cantidad_producida)) / SUM(CONVERT(DECIMAL(12, 4), pr.cantidad_procesada)) AS Rendimiento_Harina_Pescado
    FROM 
        [grupo03].[produccion_diaria] pr
    WHERE 
        YEAR(pr.Fecha_Produccion) = 2023
    GROUP BY 
        pr.ID_Planta, 
        pr.Fecha_Produccion
)
SELECT 
    pl.Nombre_Planta,
    convert(decimal(12,2),COUNT(CASE WHEN rd.Rendimiento_Harina_Pescado <= 0.235 THEN 1 END) * 100.0 / COUNT(*)) AS porcentaje_no_sobrepaso_23_5,
    convert(decimal(12,2),COUNT(CASE WHEN rd.Rendimiento_Harina_Pescado > 0.235 AND rd.Rendimiento_Harina_Pescado <= 0.24 THEN 1 END) * 100.0 / COUNT(*)) AS porcentaje_entre_23_5_y_24,
    convert(decimal(12,2),COUNT(CASE WHEN rd.Rendimiento_Harina_Pescado > 0.24 THEN 1 END) * 100.0 / COUNT(*)) AS porcentaje_supero_24
FROM 
    rendimiento rd
JOIN 
    [grupo03].[planta] pl ON rd.ID_Planta = pl.ID_Planta
GROUP BY 
    pl.Nombre_Planta;

--PREGUNTA 9
--En promedio, ¿en cuánto porcentaje difieren los indicadores de rendimiento del producto "Harina de pescado" y 
--"Harina de Pescado P2" durante el 2024?

DECLARE @rendimientoP1_2024 DECIMAL(12, 3);

SET @rendimientoP1_2024 = (
    SELECT
        convert(decimal(12,3), sum(convert(decimal(12,4),cantidad_producida)) / sum(convert(decimal(12,4),cantidad_procesada)) * 100) AS rendimientoP1_2024
    FROM 
        [grupo03].[produccion_diaria]
    WHERE 
        ID_Producto=1 
    AND 
        YEAR(Fecha_Produccion) = 2024 
);

PRINT 'Indicador Harina de Pescado: ' + cast(@rendimientoP1_2024 AS VARCHAR(10));

DECLARE @rendimientoP2_2024 DECIMAL(12, 3);

SET @rendimientoP2_2024 = (
    SELECT
        convert(decimal(12,3), sum(convert(decimal(12,4),cantidad_producida)) / sum(convert(decimal(12,4),cantidad_procesada)) * 100) AS rendimientoP1_2024
    FROM 
        [grupo03].[produccion_diaria]
    WHERE 
        ID_Producto=2 
    AND 
        YEAR(Fecha_Produccion) = 2024 
);
PRINT 'Indicador Harina de Pescado P2: ' + cast(@rendimientoP2_2024 AS VARCHAR(10));

PRINT 'Diferencia: ' + cast(convert(decimal(12,2),(@rendimientoP2_2024 - @rendimientoP1_2024)) AS VARCHAR(10)) +'%'

--PREGUNTA 10
--¿Cuál es la tendencia del índice diario de producción diaria a lo largo de 1 semana (Lunes - Viernes) durante el 2023-T2 comparado a 2024-T2?
SELECT 
    CASE 
        WHEN DATENAME(WEEKDAY, Fecha_Produccion) = 'Sunday' THEN '01-domingo'
        WHEN DATENAME(WEEKDAY, Fecha_Produccion) = 'Monday' THEN '02-lunes'
        WHEN DATENAME(WEEKDAY, Fecha_Produccion) = 'Tuesday' THEN '03-martes'
        WHEN DATENAME(WEEKDAY, Fecha_Produccion) = 'Wednesday' THEN '04-miercoles'
        WHEN DATENAME(WEEKDAY, Fecha_Produccion) = 'Thursday' THEN '05-jueves'
        WHEN DATENAME(WEEKDAY, Fecha_Produccion) = 'Friday' THEN '06-viernes'
        WHEN DATENAME(WEEKDAY, Fecha_Produccion) = 'Saturday' THEN '07-sábado'
    END AS Dia_Semana,

    convert(decimal(12,2),SUM(CASE WHEN AnioTemp = '2023-T2' THEN CONVERT(DECIMAL(12, 4), cantidad_producida) ELSE 0 END) / 
                SUM(CASE WHEN AnioTemp = '2023-T2' THEN CONVERT(DECIMAL(12, 4), cantidad_procesada) ELSE 0 END)*100) AS Rendimiento_Harina_Pescado_2023_T2,
        convert(decimal(12,2),SUM(CASE WHEN AnioTemp = '2024-T2' THEN CONVERT(DECIMAL(12, 4), cantidad_producida) ELSE 0 END)/ 
                SUM(CASE WHEN AnioTemp = '2024-T2' THEN CONVERT(DECIMAL(12, 4), cantidad_procesada) ELSE 0 END)*100) AS Rendimiento_Harina_Pescado_2024_T2
FROM 
        [grupo03].[produccion_diaria]
GROUP BY 
        DATENAME(WEEKDAY, Fecha_Produccion)
ORDER BY 
        Dia_Semana;
