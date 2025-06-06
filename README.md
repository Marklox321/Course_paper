# Разработка базы данных для системы самообслуживания в ресторане быстрого питания
![Скриншот]([https://github.com/n0maCi/course_project/blob/main/erd.png?raw=true](https://github.com/Marklox321/Course_paper/blob/main/ERD_DIAGRAMA%20(2).png?raw=true))


## Типовые Запросы
**1. Вывести сотрдника, который получает больше всех в компании**
```sql
select name, salary from emploees
order by salary desc
limit 1;
```

**2. Уволить сотрудника с именем 'Богдан' с фамилей 'Бульфорд', и зарплатой 5.00**
```sql
SET FOREIGN_KEY_CHECKS = 0;
DELETE FROM emploees WHERE (name = 'Богдан' and surname = 'Булфорд'
 and salary = 5.00) and id = 10;
SET FOREIGN_KEY_CHECKS = 1;
```

**3. Вывести последние 3 самых дорогих совершёных продаж**
```sql
select products_id, amount, new_value from change_logs
where old_value = 'Заказ в процессе'
order by new_value desc
limit 3; 
```

**4. Вывести наименшное количество товаров на складе**
```sql
select name, amount from stock
order by amount asc
limit 1;
```

**5. Вывести ТОП-3 самых продоваенмых товаров**
```sql
select products_id, amount from change_logs
where old_value = 'Заказ в процессе'
order by amount desc;
```

## Хранимые процедуры
1. Данная хранимая процедура выполняет оформление заказа,фиксируя продажу указанного количества товара конкретным сотрудником.
``` sql
call fastfood_db.procces_sales_food(6, 1, 25);
```
Процедура для продажи товара
Регистрирует продажу (товар, количество, продавец), проверяет остатки и записывает операцию. Если что-то не так — отменяет.

## Тригер
**`products_before_update`** -  Триггер отслеживаюшый таблицу `products` на изменения цены и количество товаров, и записываюшый логи в `change_logs`

## Функция
**`get_product_price_by_id`** - это функцыя отображаюшый цену указанного товара по ID

## Представление
``` sql
SELECT * FROM fastfood_db.current_month_revenue;
```
Это представление показывает доход за текущий месяц.

## Роли
1. Роль для руководителей отделов
``` sql
CREATE ROLE IF NOT EXISTS LeaderUser;
GRANT SELECT ON course_work.employees TO LeaderUser;
GRANT SELECT ON course_work.job_title TO LeaderUser;
GRANT SELECT ON course_work.depatments TO LeaderUser;
GRANT SELECT, INSERT ON course_work.time_tracking TO LeaderUser;
```
