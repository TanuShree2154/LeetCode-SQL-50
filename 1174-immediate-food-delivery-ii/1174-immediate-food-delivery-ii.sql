# Write your MySQL query statement below
SELECT ROUND(sum(
    case when order_date = customer_pref_delivery_date then 1 else 0 end
)/ count(*) *100 ,2) AS immediate_percentage
FROM Delivery d
WHERE 
order_date IN (SELECT MIN(order_date) from Delivery  where customer_id = d.customer_id group by customer_id);