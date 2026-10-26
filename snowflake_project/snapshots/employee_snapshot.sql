{% snapshot employee_snapshot %}

{{
    config(
        target_schema = 'SNAPSHOT',
        unique_key = 'ID',
        strategy = 'timestamp',
        updated_at = 'UPDATED_AT'
    )
}}

select * from {{ source('raw','EMP_TEST') }} 

{% endsnapshot %}