SELECT
ROUND(AVG(LENGTH(comment_text)),2) AS avg_comment_length
FROM youtube_comments;

SELECT
author_name,
LEFT(comment_text,200) AS comment_preview,
LENGTH(comment_text) AS comment_length
FROM youtube_comments
ORDER BY comment_length DESC
LIMIT 10;

SELECT
author_name,
comment_text,
LENGTH(comment_text) AS comment_length
FROM youtube_comments
ORDER BY comment_length ASC
LIMIT 10;

SELECT
author_name,
comment_text
FROM youtube_comments
WHERE comment_text LIKE 'Thank%';

SELECT
author_name,
comment_text
FROM youtube_comments
WHERE comment_text LIKE '%!';

SELECT COUNT(*) AS course_mentions
FROM youtube_comments
WHERE comment_text LIKE '%course%';

SELECT COUNT(*) AS roadmap_mentions
FROM youtube_comments
WHERE comment_text LIKE '%roadmap%';

SELECT COUNT(*) AS beginner_mentions
FROM youtube_comments
WHERE comment_text LIKE '%beginner%';

SELECT
author_name,
LEFT(comment_text,150) AS preview,
LENGTH(comment_text) AS characters
FROM youtube_comments
ORDER BY characters DESC
LIMIT 20;

SELECT COUNT(*)
FROM youtube_comments
WHERE TRIM(comment_text)='';