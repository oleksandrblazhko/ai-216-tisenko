pay()
1) вхідні параметри:<br>
1.1) num_card - номер картки (числовий):<br>
- умова 1 – num_card відповідає алгоритму Луна;<br>
- умова 2 – довжина числа num_card дорівнює 16 символів;<br>
1.2) val_per - термін дії картки (числовий):<br>
- умова 3 - число менше ніж 1300 та більше 100;<br>
- умова 4 - остача ділення числа на 100 не менше 23;<br>
1.3) cvv2 - код перевірки(числовий):<br>
- умова 6 - довжина числа cvv2 дорівнює 3 символи;<br>
2) значення, що повертаються функцією:<br>
- значення = 1 – оплата пройшла успішно;<br>
- значення = -1 – одна із змінних не відповідає умовам;<br>
- значення = 0 – оплата пройшла невдало відповідно відповіді електронної платіжної системи.
