/*Создать представление, которое отобразит, в каких городах самые дорогие тарифы на
бензин в рублях с учётом курса валюты на тот момент, когда была оплата за бензин. Для
данного представления в apex необходимо будет создать столбчатую диаграмму.*/
CREATE OR REPLACE VIEW MAX_TARIF
AS
WITH T1 AS
(SELECT CT.NAME CITY_NAME
       ,(AMOUNT_TO_PAID/AMOUNT_OF_GASOLINE) TARIF
       ,R.RATE
       ,PMNT.TIME_CREATE PYAMENT_TIME
       ,RFG.TIME_CREATE
       ,ROUND((AMOUNT_TO_PAID/AMOUNT_OF_GASOLINE) /R.RATE,2) RUBL_K_CURRENCY
  FROM CITY CT
JOIN COUNTRY CTR
ON CT.COUNTRY_ID = CTR.ID
JOIN CURRENCY2COUNTRY C2C
ON C2C.COUNTRY_ID = CTR.ID
JOIN PAYMENT PMNT
ON C2C.CURRENCY_ID = PMNT.CURRENCY_ID
JOIN REFUELING RFG
ON PMNT.ID = RFG.PAYMENT_ID
JOIN RATE R
ON pmnt.currency_id = r.currency1_id
  WHERE (r.currency1_id = 200 OR r.currency2_id=200)
        AND TRUNC(RFG.TIME_CREATE,'DD') = TRUNC(R.TIME_CREATE,'DD'))
SELECT CITY_NAME,MAX(RUBL_K_CURRENCY) RUBL_K_CURRENCY
    FROM T1
GROUP BY CITY_NAME;
/
select * from MAX_TARIF;