from red_30_tech_us_sales_cleaned
where EmpID = 900012972

select EnpID
  , max(julianday(OrderDate)) - min(julianday(OrderDate)) as MinMaxDateDiffDays
from red_30_tech_us_sales_cleaned
where EmpID = 900012972

{% macro min_max_date_macro(field_name)%}
  max(julianday({{field_name}})) - min(julianday({{field_name}}))
{% endmacro %}

select EmpID
, {{ min_max_date_macro('OrderDate') }} as MinMaxDateDiffDays
from red_30_tech_us_sales_cleaned
where EmpID = 900012972