


{{ config(materialized = 'table' , tags = ['emp']) }}

select * from  {{ ref('dim_emp_test')}}

--to run the specific files we use tags dbt run --select tag:emp

