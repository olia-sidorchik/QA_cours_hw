--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name, s.monthly_salary from employees e
join employee_salary es 
on e.id =es.employee_id 
join salary s 
on s.id=es.salary_id;

--2. Вывести всех работников у которых ЗП меньше 2000.
select employee_name, s.monthly_salary from employees e 
join employee_salary es 
on e.id=es.employee_id 
join salary s 
on s.id=es.salary_id 
where monthly_salary<2000;

--3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select monthly_salary from salary s
left join employee_salary es 
on s.id=es.salary_id
where es.employee_id is null;

--4.Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select monthly_salary from salary s
left join employee_salary es 
on s.id=es.salary_id
where salary_id is null and monthly_salary <2000;

-- 5. Найти всех работников кому не начислена ЗП.
select employee_name, es.salary_id from employees e 
left join employee_salary es 
on e.id = es.employee_id
where salary_id is null;

--6. Вывести всех работников с названиями их должности.
select employee_name , r.role_name from employees e 
left join roles_employee re 
on e.id=re.employee_id 
left join roles r 
on re.role_id=r.id ;

--7. Вывести имена и должность только Java разработчиков.
select employee_name, r.role_name from employees e 
join roles_employee re 
on e.id=re.employee_id 
join roles r 
on r.id =re.role_id 
where role_name like '%Java developer%';

--8. Вывести имена и должность только Python разработчиков.
select employee_name , r.role_name from employees e 
join roles_employee re 
on e.id=re.employee_id 
join roles r 
on r.id=re.role_id 
where role_name like '%Python developer%';

--9.Вывести имена и должность всех QA инженеров
select employee_name , r.role_name from employees e 
join roles_employee re 
on e.id =re.employee_id 
join roles r 
on re.role_id =r.id 
where role_name like '%QA%';

--10. Вывести имена и должность ручных QA инженеров.
select employee_name , r.role_name from employees e 
join roles_employee re 
on e.id =re.employee_id 
join roles r 
on re.role_id =r.id 
where role_name like '%Manual QA%';

--11.Вывести имена и должность автоматизаторов QA
select employee_name , r.role_name from employees e 
join roles_employee re 
on e.id =re.employee_id 
join roles r 
on re.role_id =r.id 
where role_name like '%Automat%';

--12.Вывести имена и зарплаты Junior специалистов
select employee_name, r.role_name, s.monthly_salary from employees e 
left join roles_employee re 
on e.id=re.employee_id 
left join roles r 
on re.role_id =r.id 
left join employee_salary es 
on es.employee_id =e.id 
left join salary s 
on s.id=es.salary_id 
where role_name like '%Junior%';

--13. Вывести имена и зарплаты Middle специалистов
select employee_name , r.role_name , s.monthly_salary from employees e 
left join roles_employee re 
on e.id=re.employee_id 
left join roles r 
on re.role_id =r.id 
left join employee_salary es 
on es.employee_id =e.id 
left join salary s 
on s.id=es.salary_id 
where role_name like '%Middle%';

--14.Вывести имена и зарплаты Senior специалистов
select employee_name , r.role_name , s.monthly_salary from employees e 
left join roles_employee re 
on e.id=re.employee_id 
left join roles r 
on re.role_id =r.id 
left join employee_salary es 
on es.employee_id =e.id 
left join salary s 
on s.id=es.salary_id 
where role_name like '%Senior%';

--15.Вывести зарплаты Java разработчиков
select r.role_name , s.monthly_salary from employees e 
join roles_employee re 
on e.id=re.employee_id 
join roles r 
on re.role_id = r.id 
join employee_salary es 
on es.employee_id =e.id 
join salary s 
on es.salary_id =s.id 
where role_name like '%Java %';

--16.Вывести зарплаты Python разработчиков
select r.role_name , s.monthly_salary from employees e 
join roles_employee re 
on e.id=re.employee_id 
join roles r 
on re.role_id = r.id 
join employee_salary es 
on es.employee_id =e.id 
join salary s 
on es.salary_id =s.id 
where role_name like '%Python %';

-- 17.Вывести имена и зарплаты Junior Python разработчиков
select employee_name , r.role_name , s.monthly_salary from employees e 
left join roles_employee re 
on e.id=re.employee_id 
left join roles r 
on r.id=re.role_id 
left join employee_salary es 
on e.id=es.employee_id 
left join salary s 
on s.id= es.salary_id 
where role_name like '%Junior Python%';

--18. Вывести имена и зарплаты Middle JS разработчиков
select employee_name , r.role_name , s.monthly_salary from employees e 
left join roles_employee re 
on e.id=re.employee_id 
left join roles r 
on r.id=re.role_id 
left join employee_salary es 
on e.id=es.employee_id 
left join salary s 
on s.id= es.salary_id 
where role_name like '%Middle JavaSc%';

--19. Вывести имена и зарплаты Senior Java разработчиков
select employee_name , r.role_name , s.monthly_salary from employees e 
left join roles_employee re 
on e.id=re.employee_id 
left join roles r 
on r.id=re.role_id 
left join employee_salary es 
on e.id=es.employee_id 
left join salary s 
on s.id= es.salary_id 
where role_name like '%Senior Java %';

--20. Вывести зарплаты Junior QA инженеров
select r.role_name , s.monthly_salary from employees e 
join roles_employee re 
on e.id=re.employee_id 
join roles r 
on r.id=re.role_id 
join employee_salary es 
on e.id=es.employee_id 
join salary s 
on s.id= es.salary_id 
where role_name like '%Junior%QA%';

--21.Вывести среднюю зарплату всех Junior специалистов
select AVG (s.monthly_salary) from employees e 
join roles_employee re 
on e.id=re.employee_id 
join roles r 
on r.id=re.role_id 
join employee_salary es 
on e.id=es.employee_id 
join salary s 
on s.id=es.salary_id 
where role_name like '%Junior%';

--22.Вывести сумму зарплат JS разработчиков
select SUM (s.monthly_salary) from employees e 
join roles_employee re 
on e.id=re.employee_id 
join roles r 
on r.id=re.role_id 
join employee_salary es 
on e.id=es.employee_id 
join salary s 
on s.id=es.salary_id 
where role_name like '%JavaScr%';

--23. Вывести минимальную ЗП QA инженеров
select MIN (s.monthly_salary) from employees e 
join roles_employee re 
on e.id=re.employee_id 
join roles r 
on r.id=re.role_id 
join employee_salary es 
on e.id=es.employee_id 
join salary s 
on s.id=es.salary_id 
where role_name like '%QA%';

--24. Вывести максимальную ЗП QA инженеров
select MAX (s.monthly_salary) from employees e 
join roles_employee re 
on e.id=re.employee_id 
join roles r 
on r.id=re.role_id 
join employee_salary es 
on e.id=es.employee_id 
join salary s 
on s.id=es.salary_id 
where role_name like '%QA%';

--25. Вывести количество QA инженеров
select COUNT (employee_name) from employees e 
left join roles_employee re 
on e.id=re.employee_id 
left join roles r 
on r.id=re.role_id 
where role_name like '%QA%';

--26. Вывести количество Middle специалистов.
select count(employee_name) from employees e 
left join roles_employee re 
on e.id=re.employee_id 
left join roles r 
on r.id=re.role_id 
where role_name like '%Middle%';

--27. Вывести количество разработчиков
select count (employee_name) from employees e 
left join roles_employee re 
on e.id=re.employee_id 
left join roles r 
on r.id=re.role_id 
where role_name like '%eveloper%';

--28. Вывести фонд (сумму) зарплаты разработчиков.
select SUM (s.monthly_salary) from employees e 
left join roles_employee re 
on e.id=re.employee_id 
left join roles r 
on r.id=re.role_id 
left join employee_salary es 
on es.employee_id =e.id 
left join salary s 
on s.id=es.salary_id 
where role_name like '%eveloper%';

--29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employee_name , r.role_name , s.monthly_salary from employees e 
left join roles_employee re 
on e.id=re.employee_id 
left join roles r 
on r.id=re.role_id 
left join employee_salary es 
on es.employee_id =e.id 
left join salary s 
on s.id=es.salary_id 
order by s.monthly_salary ;

--30.Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employee_name , r.role_name , s.monthly_salary from employees e 
left join roles_employee re 
on e.id=re.employee_id 
left join roles r 
on r.id=re.role_id 
left join employee_salary es 
on es.employee_id =e.id 
left join salary s 
on s.id=es.salary_id 
where s.monthly_salary between 1700 and 2300
order by s.monthly_salary;

--31.Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employee_name , r.role_name , s.monthly_salary from employees e 
left join roles_employee re 
on e.id=re.employee_id 
left join roles r 
on r.id=re.role_id 
left join employee_salary es 
on es.employee_id =e.id 
left join salary s 
on s.id=es.salary_id 
where s.monthly_salary<2300
order by s.monthly_salary;

--32.Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employee_name , r.role_name , s.monthly_salary from employees e 
left join roles_employee re 
on e.id=re.employee_id 
left join roles r 
on r.id=re.role_id 
left join employee_salary es 
on es.employee_id =e.id 
left join salary s 
on s.id=es.salary_id 
where s.monthly_salary in (1100, 1500, 2000)
order by s.monthly_salary;
