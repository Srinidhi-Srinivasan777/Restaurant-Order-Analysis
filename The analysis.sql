#Combining them together and doing the analysis

#1 Combining the menu_items and order_details tables into a single table.
select * from menu_items;
select * from order_details;

create table ordersmenu (select * from order_details od left join menu_items mi
on od.item_id = mi.menu_item_id);

#2 What were the least and the most ordered items? What categories were they in?\
select item_name,category,count(order_details_id) as num_purchases from ordersmenu
group by item_name, category
order by num_purchases;

select item_name,category,count(order_details_id) as num_purchases from ordersmenu
group by item_name, category
order by num_purchases desc;

#3 What were the top 5 orders that spent the most money?
select * from ordersmenu;
select order_id, sum(price) as prices from ordersmenu group by order_id order by prices desc limit 5;

#4 View the details of the highest spend order. What insights can i gather from them?
select category, count(item_id) from ordersmenu where order_id=440 group by category;

#5 View the details of the top 5 highest spend orders. What insights can i gather from them?

select order_id,category, count(item_id) as numbers from ordersmenu where order_id in (440,2075,1957,330,2675) group by order_id,category order by numbers desc limit 5;