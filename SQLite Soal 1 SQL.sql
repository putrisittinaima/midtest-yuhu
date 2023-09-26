SELECT DISTINCT num
FROM input_table t1
WHERE EXISTS (
    SELECT *
    FROM input_table t2
    WHERE t2.id = t1.id + 1 AND t2.num = t1.num
    AND EXISTS (
        SELECT *
        FROM input_table t3
        WHERE t3.id = t2.id + 1 AND t3.num = t2.num
    )
)
ORDER BY num;