SELECT Priglasil.id as Priglasil_ID, Prishel.id as Prishel_id,
 Priglasil.group_id as Priglasil_group_id, Prishel.group_id as Prishel_group_id
FROM users Priglasil, users Prishel
WHERE Priglasil.id = Prishel.invited_by_user_id
and Priglasil.group_id <> Prishel.group_id;