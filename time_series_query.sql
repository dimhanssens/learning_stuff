-- SQLite
-- Unfortunately, SQL does not support dynamic column names filtering.

WITH tbl AS (SELECT 'time_series_60min_singleindex' AS t)

SELECT 'SELECT ' || group_concat(name, ', ') || ' FROM "' || t || '";'
FROM pragma_table_info((SELECT t FROM tbl))
CROSS JOIN tbl
WHERE name LIKE 'BE%' 
   OR name LIKE '%timestamp%';

SELECT * FROM time_series_60min_singleindex
LIMIT 1;