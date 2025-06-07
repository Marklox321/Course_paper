# Проектирование базы данных для кассовой системы ресторана быстрого питания
![Скриншот](https://github.com/Marklox321/Course_paper/blob/main/ERD_DIAGRAMA%20(2).png?raw=true)


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
1. Создаём роли
``` sql
CREATE ROLE IF NOT EXISTS 'full_access_role';
CREATE ROLE IF NOT EXISTS 'read_only_role';
```
2. Назначаем права
``` sql
GRANT ALL PRIVILEGES ON *.* TO 'full_access_role' WITH GRANT OPTION;
GRANT SELECT ON *.* TO 'read_only_role';
```
3. Создаём пользователей
``` sql
CREATE USER IF NOT EXISTS 'Mark'@'localhost' IDENTIFIED BY '0987654321';
CREATE USER IF NOT EXISTS 'Bogdan'@'localhost' IDENTIFIED BY '1234567890';
CREATE USER IF NOT EXISTS 'Билли'@'localhost' IDENTIFIED BY '12345';
```
4. Назначаем роли
``` sql
GRANT 'full_access_role' TO 'Mark'@'localhost';
GRANT 'read_only_role' TO 'Bogdan'@'localhost';
GRANT 'read_only_role' TO 'Билли'@'localhost';
```
5. Активируем роли по умолчанию (важно!)
``` sql
SET DEFAULT ROLE 'full_access_role' TO 'Mark'@'localhost';
SET DEFAULT ROLE 'read_only_role' TO 'Bogdan'@'localhost';
SET DEFAULT ROLE 'read_only_role' TO 'Билли'@'localhost';
```
6. Применяем изменения
``` sql
FLUSH PRIVILEGES;
```
