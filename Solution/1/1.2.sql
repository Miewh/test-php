select * from users t1
where not exists (select 1 from users t2
                  where t2.group_id = t1.group_id
                    and t2.posts_qty > t1.posts_qty);