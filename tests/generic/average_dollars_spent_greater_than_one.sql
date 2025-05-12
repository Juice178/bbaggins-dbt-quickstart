{% test average_dollars_spent_greater_than_one( model, column_name) %}

select
    column_name, 
    avg(amount) as average_amount
from {{ model }}
group by 1
having count(column_name) > 1 and average_amount < 1


{% endtest %}
