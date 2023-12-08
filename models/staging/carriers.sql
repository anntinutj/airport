{{ config(
  persist_docs={"relation": true, "columns": true},
  materialized='table'
) }}

select 
    Code as carrier_id,
    Name as carrier_name
from 
    {{ source('stg_airport', 'carriers') }}
