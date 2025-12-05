{% macro daytype(day)%}

CASE
    WHEN day IN ('Sat', 'Sun')
    THEN 'WEEKEND'
    ELSE 'WEEKDAY'
END
{% endmacro %}