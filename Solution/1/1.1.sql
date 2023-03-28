SELECT Priglasil.id as Priglasil_ID, Prishel.id as Prishel_id,
 Priglasil.posts_qty as Priglasil_posts_qty, Prishel.posts_qty as Prishel_posts_qty
FROM users Priglasil, users Prishel
WHERE Priglasil.id = Prishel.invited_by_user_id 
and Priglasil.posts_qty < Prishel.posts_qty;