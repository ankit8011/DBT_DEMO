WITH CTE AS (
    select
    CITYNAME,
    TEMP,
    DATE(TIME) AS DATE,
    TIME(TIME) AS TIME,
    DAYNAME(TIME) AS DAY,
    {{daytype('DAYNAME(TIME)')}} AS DAYTYPE
    from 
    {{source ('demo', 'weather')}}
)

select * from CTE