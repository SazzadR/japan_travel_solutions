/* We are removing subquery and using join instead.

Profiling result from subquery approch.
> EXPLAIN SELECT count(*) FROM words WHERE id in (SELECT word_id FROM translations WHERE translated_form IS NOT NULL);
+----+--------------+--------------+------------+--------+---------------+---------+---------+---------------------+-------+----------+-------------+
| id | select_type  | table        | partitions | type   | possible_keys | key     | key_len | ref                 | rows  | filtered | Extra       |
+----+--------------+--------------+------------+--------+---------------+---------+---------+---------------------+-------+----------+-------------+
|  1 | SIMPLE       | <subquery2>  | NULL       | ALL    | NULL          | NULL    | NULL    | NULL                |  NULL |   100.00 | Using where |
|  1 | SIMPLE       | words        | NULL       | eq_ref | PRIMARY       | PRIMARY | 4       | <subquery2>.word_id |     1 |   100.00 | Using index |
|  2 | MATERIALIZED | translations | NULL       | ALL    | NULL          | NULL    | NULL    | NULL                | 23569 |    90.00 | Using where |
+----+--------------+--------------+------------+--------+---------------+---------+---------+---------------------+-------+----------+-------------+

Profiling result from join approch.
> EXPLAIN SELECT COUNT(DISTINCT (words.id)) FROM words INNER JOIN translations ON (words.id = translations.word_id) WHERE translations.id IS NOT NULL;
+----+-------------+--------------+------------+--------+---------------+---------+---------+---------------------------------+-------+----------+-------------+
| id | select_type | table        | partitions | type   | possible_keys | key     | key_len | ref                             | rows  | filtered | Extra       |
+----+-------------+--------------+------------+--------+---------------+---------+---------+---------------------------------+-------+----------+-------------+
|  1 | SIMPLE      | translations | NULL       | ALL    | PRIMARY       | NULL    | NULL    | NULL                            | 23569 |    90.00 | Using where |
|  1 | SIMPLE      | words        | NULL       | eq_ref | PRIMARY       | PRIMARY | 4       | dictionary.translations.word_id |     1 |   100.00 | Using index |
+----+-------------+--------------+------------+--------+---------------+---------+---------+---------------------------------+-------+----------+-------------+

*/

SELECT
    COUNT(DISTINCT (words.id))
FROM
    words
        INNER JOIN
    translations ON (words.id = translations.word_id)
WHERE
    translations.id IS NOT NULL;
