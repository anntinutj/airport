{% test delay_validation(model, column_name) %}


with validation as (

    select
        {{ column_name }} as delay

    from {{ model }}

),

validation_errors as (

    select
        delay

    from validation
    -- if this is true, then even_field is actually odd!
    where (delay >= 500)

)

select *
from validation_errors

{% endtest %}