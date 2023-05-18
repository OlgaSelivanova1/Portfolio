CREATE OR REPLACE VIEW DINAMYC_PRICE_OF_1KM
AS
SELECT CITY_NAME,SUM(PRICE_1KM) NEW_PRICE                                        /*Суммируем суммы по городам и по месяцам (см. в Group by)*/
      ,P_MONTH
FROM(
SELECT  O.ID ORDER_ID
        ,ROUND(SUM(AMOUNT_TO_PAID/DISTANCE),2)PRICE_1KM                             /*Находим цену за поездку за 1 км*/
       ,CI.NAME CITY_NAME
       ,trunc(p.time_create,'MM') P_MONTH                                           /*округляем дату до месяца (стобец 'time_create')*/
    FROM PAYMENT P                                                                  /*Таблица, в которой хранится информация об оплатах*/
JOIN ORDER1 O                                                                       /*соединяем с таблицей заказов, чтобы выбрать оплаты только за поездки (исключая оплаты за заправку бензина)*/
ON P.ID = O.PAYMENT_ID
JOIN WAY W                                                                          /*Соединяем с таблицей "Путь", чтобы найти дистанцию (киллометраж) поездки каждого заказа*/
ON O.ID = W.ORDER_ID
JOIN ADDRESS A                                                                      /*Через стобцы таблицы "ПУТЬ" находим точки отправления, которые пересекаются с таблицей address */                                                                                   
ON W.TO_ADDRESS_ID = A.ID OR W.FROM_ADDRESS_ID = A.ID
JOIN STREET S
ON A.STREET_ID = S.ID  
JOIN CITY CI ON S.CITY_ID = CI.ID
JOIN COUNTRY CO ON CI.COUNTRY_ID = CO.ID                                             /*и выходим на страну Россия по ее ID и города России*/
WHERE CO.ID = 1001
GROUP BY O.ID,CI.NAME,p.time_create
ORDER BY CI.NAME
) 
GROUP BY CITY_NAME,P_MONTH
ORDER BY  CITY_NAME,P_MONTH ASC,NEW_PRICE
;
/
SELECT * FROM DINAMYC_PRICE_OF_1KM;
