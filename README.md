# Service Taxi
Service Taxi - это Веб-приложение,созданное в ORACLE Apex и выражает собой связь КЛИЕНТ-ВОДИТЕЛЬ.
Таблицы созданы СУБД "ORACLE SQL Developer", а база данных называется согласно проекту.
# Возможности сервиса
- Вносить изменения в таблицы БД
- Обновлять таблицы БД
- Просматривать графики и дашброды статистических данных
# Возможности КЛИЕНТА
 - Создавать заказ
 - Указывать несколько точек остановки
 - Ставить оценку водителю
# Возможности ВОДИТЕЛЯ
- Бронирование автомобиля
- Снятие автомобиля с брони
- Вести учет заправки автомобиля (сумму потраченных денег и количество бензина)
- Просматривать рейтинг
- Ставить оценку водителю
# Основные задачи
<h2>Аналитические</h2>
<h5> -Создать представление, которое для каждого пользователя, который хотя бы раз
пользовался услугами такси, подберёт 5 водителей, с которыми данный пользователь
ещё не ездил, но у которых средняя оценка выше 4.</h5>
<a href = "https://github.com/OlgaSelivanova1/Portfolio/blob/main/%D0%90%D0%BD%D0%B0%D0%BB%D0%B8%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B5%20%D0%B7%D0%B0%D0%B4%D0%B0%D1%87%D0%B8/PASS_TO_DRIVER.sql"target="_blank">Аналитические задачи/PASS_TO_DRIVER.sql</a>
<h6><ins> <a href = "https://github.com/OlgaSelivanova1/Portfolio/blob/ba5e86358679be4bd80b29fbba84587a93bf501e/%D0%90%D0%BD%D0%B0%D0%BB%D0%B8%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B5%20%D0%B7%D0%B0%D0%B4%D0%B0%D1%87%D0%B8/SCREEN/PASS_TO_DRIVER1.jpg">Результат</a></ins></h6>
<h6><ins> <a href ="https://github.com/OlgaSelivanova1/Portfolio/blob/ba5e86358679be4bd80b29fbba84587a93bf501e/%D0%90%D0%BD%D0%B0%D0%BB%D0%B8%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B5%20%D0%B7%D0%B0%D0%B4%D0%B0%D1%87%D0%B8/SCREEN/PASS_TO_DRIVER2.jpg"target="_blank">Результат</a></ins></h6>

 <h5> -Создать представление, которое для каждого пользователя, у которых больше 10
поездок, в порядке убывания подберёт 5 самых частых мест начала или окончания
поездки.</h5>
<a href = "https://github.com/OlgaSelivanova1/Portfolio/blob/3e674f9e1cf2bade3066ec2ad9b750536aefb911/%D0%90%D0%BD%D0%B0%D0%BB%D0%B8%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B5%20%D0%B7%D0%B0%D0%B4%D0%B0%D1%87%D0%B8/Points_To_From"target="_blank">Аналитические задачи/PASS_TO_DRIVER.sql</a>
<h6><ins> <a href = "https://github.com/OlgaSelivanova1/Portfolio/blob/ba5e86358679be4bd80b29fbba84587a93bf501e/%D0%90%D0%BD%D0%B0%D0%BB%D0%B8%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B5%20%D0%B7%D0%B0%D0%B4%D0%B0%D1%87%D0%B8/SCREEN/Points_To_From.jpg"target="_blank">Результат</a></ins></h6>

 <h5> -Создать представление, которое отобразит, в каких городах самые дорогие тарифы на
бензин в рублях с учётом курса валюты на тот момент, когда была оплата за бензин. Для
данного представления в apex необходимо будет создать столбчатую диаграмму.</h5>
<a href = "https://github.com/OlgaSelivanova1/Portfolio/blob/f8407f2feae5bf622708703f4d00cc93997e0896/%D0%90%D0%BD%D0%B0%D0%BB%D0%B8%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B5%20%D0%B7%D0%B0%D0%B4%D0%B0%D1%87%D0%B8/MaxTarif_City.sql"target="_blank">Аналитические задачи/MaxTarif_City.sql</a>
<h6><ins> <a href = "https://github.com/OlgaSelivanova1/Portfolio/blob/ba5e86358679be4bd80b29fbba84587a93bf501e/%D0%90%D0%BD%D0%B0%D0%BB%D0%B8%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B5%20%D0%B7%D0%B0%D0%B4%D0%B0%D1%87%D0%B8/SCREEN/MaxTarif_City.jpg"target="_blank">Результат</a></ins></h6>
 <h5> -Создать представление, которое отобразит средний чек за поездку в разных странах.
Для данного представления в apex необходимо будет создать пончиковую диаграмму.</h5>
<a href = "https://github.com/OlgaSelivanova1/Portfolio/blob/main/%D0%90%D0%BD%D0%B0%D0%BB%D0%B8%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B5%20%D0%B7%D0%B0%D0%B4%D0%B0%D1%87%D0%B8/AVG_PAY_TOWAY.sql"target="_blank">Аналитические задачи/AVG_PAY_TOWAY.sql</a>
<h6><ins> <a href = "https://github.com/OlgaSelivanova1/Portfolio/blob/7f24fdffb0503e27cf0b75e176dac5dd4a70dd6c/%D0%90%D0%BD%D0%B0%D0%BB%D0%B8%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B5%20%D0%B7%D0%B0%D0%B4%D0%B0%D1%87%D0%B8/SCREEN/AVG_PAY_TOWAY.jpg"target="_blank">Результат</a></ins></h6>

 <h5> -Создать представление, которое отобрази месячную динамику цен на проезд за 1
километр в городах России. Для данного представления в apex необходимо будет
создать график зависимости цен от месяца + года.</h5>
<a href = "https://github.com/OlgaSelivanova1/Portfolio/blob/main/%D0%90%D0%BD%D0%B0%D0%BB%D0%B8%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B5%20%D0%B7%D0%B0%D0%B4%D0%B0%D1%87%D0%B8/DINAMYC_PRICE_OF_1KM%40xepdb11.sql" "target="_blank">Аналитические задачи/DINAMYC_PRICE_OF_1KM@xepdb11.sql</a>
<h6><ins> <a href = "https://github.com/OlgaSelivanova1/Portfolio/blob/ba5e86358679be4bd80b29fbba84587a93bf501e/%D0%90%D0%BD%D0%B0%D0%BB%D0%B8%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B5%20%D0%B7%D0%B0%D0%B4%D0%B0%D1%87%D0%B8/SCREEN/DINAMYC_PRICE_OF_1KM.jpg"target="_blank">Результат</a></ins></h6>

