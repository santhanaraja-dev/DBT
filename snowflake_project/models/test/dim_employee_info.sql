

-- select * from practical.test.dim_emp_test   (normal sql hardcoded table name)


select* from {{ref('dim_emp_test')}}   --refering dim_emp_object without hard coding


