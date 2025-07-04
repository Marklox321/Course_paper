# Проектирование базы данных для кассовой системы ресторана быстрого питания
![Скриншот](https://github.com/Marklox321/Course_paper/blob/main/ERD_TOP.png?raw=true)


## Типовые Запросы
**1. Вывести сотрудника, который получает больше всех в компании**
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
**6. Этот запрос позволяет, как система выводит товары с сроком от 7 дней до просрочки**
```sql
SELECT 
    *
FROM 
    expirations e
WHERE 
    dey_deleys BETWEEN 0 AND 7
    AND e.quantity > 0
ORDER BY 
    e.dey_deleys ASC;
```

## Хранимые процедуры
1. Данная хранимая процедура выполняет оформление заказа,фиксируя продажу указанного количества товара конкретным сотрудником.
``` sql
call fastfood_db.procces_sales_food(6, 1, 25);
```
2. Данная хранимая процедура выполняет оформление заказа,фиксируя пополненя на склад указанного количества товара конкретным сотрудником.

``` sql
call fastfood_db.add_quantity_products(1, 1, 10);
```
3. Данная хранимая процедура выдает скидку на товар которому осталось 7 дней до просрочки.
``` sql
call fastfood_db.discount_products();
```
4. Данная хранимая процедура удалет просроченый товар.
``` sql
call fastfood_db.process_expired_items_simple();
```


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

``` sql
 -- 1. Создаём роли
CREATE ROLE IF NOT EXISTS 'full_access_role';
CREATE ROLE IF NOT EXISTS 'read_only_role';
 -- 2. Назначаем права
GRANT ALL PRIVILEGES ON *.* TO 'full_access_role' WITH GRANT OPTION;
GRANT SELECT ON *.* TO 'read_only_role';
 -- 3. Создаём пользователей
CREATE USER IF NOT EXISTS 'Mark'@'localhost' IDENTIFIED BY'0987654321';
CREATE USER IF NOT EXISTS 'Bogdan'@'localhost' IDENTIFIED BY '1234567890';
CREATE USER IF NOT EXISTS 'Билли'@'localhost' IDENTIFIED BY '12345';
 -- 4. Назначаем роли
GRANT 'full_access_role' TO 'Mark'@'localhost';
GRANT 'read_only_role' TO 'Bogdan'@'localhost';
GRANT 'read_only_role' TO 'Билли'@'localhost';
 -- 5. Активируем роли по умолчанию (важно!)
SET DEFAULT ROLE 'full_access_role' TO 'Mark'@'localhost';
SET DEFAULT ROLE 'read_only_role' TO 'Bogdan'@'localhost';
SET DEFAULT ROLE 'read_only_role' TO 'Билли'@'localhost';
 -- 6. Применяем изменения
FLUSH PRIVILEGES;
```
Код устанавливает права доступа для сотрудников: Марку назначаются административные права с полным доступом, Богдану и Билли - права только на чтение. Такое разделение обеспечивает безопасность базы данных
