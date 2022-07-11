SELECT
    words.id, words.base_form, definitions.def_text
FROM
    words
        LEFT JOIN
    definitions ON words.id = definitions.word_id
WHERE
    base_form = 'hello';
