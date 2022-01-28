-- 1. Display the number of unique inventory rented and the total number of inventory rented
SELECT
COUNT(DISTINCT r.inventory_id) unique_inventory_rented,
COUNT(r.inventory_id) total_inventory_rented

FROM
rental r

-- 2.List all the films of Dan Torn and Dan Streep. Sort by film_title alphabetical order
select 
    f.title film_title, f.release_year release_year, concat(a.last_name,',', ' ', a.first_name) actor_full_name
    from film f
    left join film_actor fa on fa.film_id = f.film_id
    left join actor a on a.actor_id = fa.actor_id
    where a.actor_id = 18 or a.actor_id = 116
    order by f.title

-- 3.List all Comedy films of all actors whose last names start with 'D'. Sort by actor_full_name alphabetical order
select
	concat(a.last_name,',', ' ', a.first_name) actor_full_name, 
    f.title film_title, c.name category_name
	from film f 
	left join film_category fc on fc.film_id = f.film_id
	left join category c on c.category_id = fc.category_id
	left join film_actor fa on fa.film_id = f.film_id
	left join actor a on a.actor_id = fa.actor_id
	where c.category_id = 5 and a.last_name like 'D%'
	order by concat(a.last_name,',', ' ', a.first_name)

-- 4.  Determine the potential number of customers a store staff would serve 
-- (count the number of customer in the same country as the staff)
select
    concat(st.last_name,',', ' ', st.first_name) staff_full_name,
    count(co.country) customer_count
    from customer cu
    left join payment p on p.customer_id = cu.customer_id
    left join staff st on st.staff_id = p.staff_id
    left join address ad on ad.address_id = st.address_id
    left join city c on c.city_id = ad.city_id
    left join country co on co.country_id = c.country_id 
    group by co.country, concat(st.last_name,',', ' ', st.first_name)
    order by co.country

-- 5.Find the most popular film category per store (determined by the number of rentals)
select  
    s.store_id, count(f.title) film_count,  c.name category_name
	from rental r
	left join inventory i on i.inventory_id = r.inventory_id
	left join film f on f.film_id = i.film_id
	left join film_category fc on fc.film_id= f.film_id
	left join category c on c.category_id = fc.category_id
    left join staff s on s.staff_id = r.staff_id
	left join store st on st.store_id = s.store_id
	group by s.store_id, c.name
-- -- having count(f.title) = 614 or count(f.title) = 582

	having count(f.title) = 
	(
    select max(a.film_count) from (
    select  
        count(f.title) film_count, s.store_id, c.name
        from rental r
        left join inventory i on i.inventory_id = r.inventory_id
		left join film f on f.film_id = i.film_id
        left join film_category fc on fc.film_id= f.film_id
        left join category c on c.category_id = fc.category_id
        left join staff s on s.staff_id = r.staff_id
        left join store st on st.store_id = s.store_id
        group by s.store_id, c.name
    ) a where a.store_id = 1	

    ) or count(f.title) = 
	(
        select max(a.film_count) from (
        select  
        count(f.title) film_count, s.store_id, c.name
        from rental r
        left join inventory i on i.inventory_id = r.inventory_id
        left join film f on f.film_id = i.film_id
        left join film_category fc on fc.film_id= f.film_id
        left join category c on c.category_id = fc.category_id
        left join staff s on s.staff_id = r.staff_id
        left join store st on st.store_id = s.store_id
        group by s.store_id, c.name
        ) a where a.store_id = 2	
)

-- 6.Rank the top 5 actors per country (determined by the number rentals) sort by most popular to least popular
select 
    a.country
    , a.actor_full_name
    , a.actor_rank
    , a.rental_count

from (

select
co.country country, 

concat(a.last_name,', ', a.first_name) actor_full_name

,  count(r.rental_id) rental_count
, rank() over ( 
    partition by co.country
    order by count(r.rental_id) desc
    ) actor_rank

from rental r
left join inventory i on i.inventory_id = r.inventory_id
left join film f on f.film_id = i.film_id
left join film_actor fa on fa.film_id = f.film_id
left join actor a on a.actor_id = fa.actor_id
left join staff s on s.staff_id = r.staff_id
left join address ad on ad.address_id = s.address_id
left join city c on c.city_id = ad.city_id
left join country co on co.country_id = c.country_id
group by a.last_name, a.first_name, co.country
) a 
where a.actor_rank between 1 and 5