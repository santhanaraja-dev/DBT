

{{config (materialized = 'incremental', unique_key = 'EMP_ID') }}

select * from {{ source ('raw', 'EMPLOYEE_INCREMENTAL')  }}

{% if is_incremental() %}

where updated_at > 
(select max(updated_at) from {{this}})  

--this gives current database.schema.this filename (practical.test.dim_emp_incremental)

{% endif %}