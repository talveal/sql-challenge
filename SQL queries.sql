-- 1
SELECT
    emp.emp_no,
    emp.last_name,
    emp.first_name,
    emp.sex,
    sal.salary
FROM
    employees emp
    JOIN salaries sal ON emp.emp_no = sal.emp_no;

-- 2
SELECT
    emp.first_name,
    emp.last_name,
    emp.hire_date
FROM
    employees emp
WHERE
    emp.hire_date >= '1986-1-1'
    AND emp.hire_date <= '1986-12-31';

-- 3
SELECT
    man.emp_no,
    dep.dept_no,
    dep.dept_name,
    man.first_name,
    man.last_name
FROM
    dept_manager depu
    JOIN departments dep ON depu.dept_no = dep.dept_no
    JOIN employees man ON depu.emp_no = man.emp_no;

-- 4
SELECT
    dep.dept_no,
    emp.emp_no,
    emp.last_name,
    emp.first_name,
    dep.dept_name
FROM
    dept_manager depu
    JOIN departments dep ON depu.dept_no = dep.dept_no
    JOIN employees emp ON depu.emp_no = emp.emp_no;

-- 5
SELECT
    emp.first_name,
    emp.last_name,
    emp.sex
FROM
    employees emp
WHERE
    emp.first_name = 'Hercules'
    AND emp.last_name LIKE 'B%';

-- 6
SELECT
    emp.emp_no,
    emp.last_name,
    emp.first_name
FROM
    employees emp
    JOIN dept_emp depu ON emp.emp_no = depu.emp_no
    JOIN departments dep ON dep.dept_no = depu.dept_no
WHERE
    dep.dept_name = 'Sales';

--7
SELECT
    emp.emp_no,
    emp.last_name,
    emp.first_name,
    dep.dept_name
FROM
    employees emp
    JOIN dept_emp depu ON emp.emp_no = depu.emp_no
    JOIN departments dep ON dep.dept_no = depu.dept_no
WHERE
    dep.dept_name = 'Sales'
    OR dep.dept_name = 'Development';

--8
SELECT
    emp.last_name,
    COUNT(*) employees_lastname_frequency
FROM
    employees emp
GROUP BY
    emp.last_name;