with order_in_each_hour as (
  select 
    date_trunc('hour',created_at) as hour, 
    count(distinct order_id) cnt
  from public.orders
  group by date_trunc('hour',created_at)
)

select avg(cnt) from order_in_each_hour