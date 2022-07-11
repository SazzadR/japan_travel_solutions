PREPARE get_definition FROM
'SELECT
    words.id, words.base_form, definitions.def_text
FROM
    words
        LEFT JOIN
    definitions ON words.id = definitions.word_id
WHERE
    base_form = ?';

SET @word = 'hello';

EXECUTE get_definition USING @word;

DEALLOCATE PREPARE get_definition;
