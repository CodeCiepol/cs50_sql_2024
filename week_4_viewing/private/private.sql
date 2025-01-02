CREATE TABLE table_messages (
    "sentence_nb" INTEGER,
    "character_nb" INTEGER,
    "message_length" INTEGER
);
INSERT INTO table_messages(sentence_nb, character_nb, message_length)
VALUES
(14, 98, 4),
(114, 3, 5),
(618, 72, 9),
(630, 7, 3),
(932, 12, 5),
(2230, 50, 7),
(2346, 44, 10),
(3041, 14, 5);


CREATE VIEW message AS
WITH "decoding_table" AS (
    SELECT sentences.sentence, character_nb, message_length FROM table_messages
    LEFT JOIN sentences
    WHERE sentences.id = table_messages.sentence_nb
)
SELECT substr(sentence, character_nb, message_length) AS phrase FROM decoding_table;

