
| FR id |  TC id  | Опис кроків тестового сценарію | Опис очікуваних результатів |
|----| --------------------------------------- | ----------- | ------------------ |
|FR2.1| TC1.1 |Початкові умови: відсутні <br>Кроки сценарію: <br> 1) num_card = 5168755909484103, <br>2) val_per = 1124,<br> 3) cvv2 = 111<br>Кінцеві умови: успішність оплати (результат з платіжної системи позитивний)| Результат = 1 |
|FR2.1| TC1.2 |Початкові умови: відсутні <br>Кроки сценарію: <br> 1) num_card = 5168755909484103, <br>2) val_per = 1124,<br> 3) cvv2 = 111<br>Кінцеві умови: неуспішність оплати (результат з платіжної системи непозитивний)| Результат = 0 |
|FR2.1| TC1.3 |Початкові умови: відсутні <br>Кроки сценарію: <br> 1) num_card = 516875590948410, <br>2) val_per = 1124, <br>3) cvv2 = 111<br>| Результат = -1 |
|FR2.1| TC1.4 |Початкові умови: відсутні <br>Кроки сценарію: <br> 1) num_card = 5168755909484103, <br>2) val_per = 112, <br>3) cvv2 = 111<br>| Результат = -1 |
|FR2.1| TC1.5 |Початкові умови: відсутні <br>Кроки сценарію: <br> 1) num_card = 5168755909484103, <br>2) val_per = 1124, <br>3) cvv2 = 11<br>| Результат = -1 |
|FR2.1| TC1.6 |Початкові умови: відсутні <br>Кроки сценарію: <br> 1) num_card = 5168755909484103, <br>2) val_per = 1400, <br>3) cvv2 = 11<br>| Результат = -1 |

