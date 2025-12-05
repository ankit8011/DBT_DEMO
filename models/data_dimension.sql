WITH CTE AS (
    select
    CITYNAME,
    TEMP,
    DATE(TIME) AS DATE,
    TIME(TIME) AS TIME,
    DAYNAME(TIME),
    CASE
    WHEN DAYNAME(TIME) IN ('Sat', 'Sun')
    THEN 'WEEKEND'
    ELSE 'WEEKDAY'
    END AS DAYTYPE
    from 
    {{source ('demo', 'weather')}}
)

select * from CTE