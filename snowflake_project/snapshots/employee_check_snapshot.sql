{% snapshot employee_check_snapshot %}

{{
    config(
        target_schema = 'SNAPSHOT',
        unique_key = 'ID',
        strategy = 'check',
        check_cols = ['DEPARTMENT','SALARY']
    )
}}

select * from {{ source('raw','EMP') }} 

{% endsnapshot %}