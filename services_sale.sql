/****Amperity - Service sale
---------------------------***/

SELECT
--sum(cast(es.refund_amount as decimal(15,2))),mcp.Ewc_CenterId
--sum(cast(es.refund_amount as decimal(15,2))),zc.centercode
SUM(es.quantity) AS QUANTIY,
sum(es.saleprice) as Saleprice,
SUM(es.net_amount) AS Net_amount,
SUM(discount) AS Total_Discount,
sum(taxes) as Taxes,
year(es.sales_date) as year,
month(es.sales_date) as month
--sum(es.ta)
--sum(es.saleprice) as SP,sum(es.taxes) as Tax,mcp.Ewc_CenterId
--sum(cast(es.saleprice as decimal(15,2))) as ServiceSale,
--zc.centercode
FROM Events_Services es
where CAST(es.sales_date AS DATE) BETWEEN CAST('2021-09-27' AS DATE) AND CAST('2021-12-25' AS DATE)
and source_id =2
GROUP by year(es.sales_date),month(es.sales_date)
order by month(es.sales_date)
