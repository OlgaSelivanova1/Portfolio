CREATE OR REPLACE VIEW DINAMYC_PRICE_OF_1KM
AS
SELECT CITY_NAME,SUM(PRICE_1KM) NEW_PRICE                                        /*��������� ����� �� ������� � �� ������� (��. � Group by)*/
      ,P_MONTH
FROM(
SELECT  O.ID ORDER_ID
        ,ROUND(SUM(AMOUNT_TO_PAID/DISTANCE),2)PRICE_1KM                             /*������� ���� �� ������� �� 1 ��*/
       ,CI.NAME CITY_NAME
       ,trunc(p.time_create,'MM') P_MONTH                                           /*��������� ���� �� ������ (������ 'time_create')*/
    FROM PAYMENT P                                                                  /*�������, � ������� �������� ���������� �� �������*/
JOIN ORDER1 O                                                                       /*��������� � �������� �������, ����� ������� ������ ������ �� ������� (�������� ������ �� �������� �������)*/
ON P.ID = O.PAYMENT_ID
JOIN WAY W                                                                          /*��������� � �������� "����", ����� ����� ��������� (�����������) ������� ������� ������*/
ON O.ID = W.ORDER_ID
JOIN ADDRESS A                                                                      /*����� ������ ������� "����" ������� ����� �����������, ������� ������������ � �������� address */                                                                                   
ON W.TO_ADDRESS_ID = A.ID OR W.FROM_ADDRESS_ID = A.ID
JOIN STREET S
ON A.STREET_ID = S.ID  
JOIN CITY CI ON S.CITY_ID = CI.ID
JOIN COUNTRY CO ON CI.COUNTRY_ID = CO.ID                                             /*� ������� �� ������ ������ �� �� ID � ������ ������*/
WHERE CO.ID = 1001
GROUP BY O.ID,CI.NAME,p.time_create
ORDER BY CI.NAME
) 
GROUP BY CITY_NAME,P_MONTH
ORDER BY  CITY_NAME,P_MONTH ASC,NEW_PRICE
;
/
SELECT * FROM DINAMYC_PRICE_OF_1KM;
