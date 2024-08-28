{% macro margin_percent(revenue, purchase_cost) %}
    (
        CASE 
            WHEN {{ purchase_cost }} = 0 THEN NULL
            ELSE ({{ revenue }} - {{ purchase_cost }}) / {{ revenue }} * 100
        END
    )
{% endmacro %}
