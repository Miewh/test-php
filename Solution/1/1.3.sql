SELECT group_id, COUNT(*) as count FROM users GROUP BY group_id
HAVING COUNT(*) > 10000;