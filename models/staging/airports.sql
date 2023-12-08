{{ config(
  persist_docs={"relation": true, "columns": true},
  materialized='table'
) }}

select 
    code as airport_id,
    description as airport_name
from 
    {{ source('stg_airport', 'airports') }}
