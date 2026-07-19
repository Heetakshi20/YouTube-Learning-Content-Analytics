SELECT
    author_name,
    COUNT(*) AS total_comments
FROM youtube_comments
GROUP BY author_name
ORDER BY total_comments DESC
LIMIT 10;

SELECT COUNT(*) AS one_time_users
FROM (
    SELECT
        author_name
    FROM youtube_comments
    GROUP BY author_name
    HAVING COUNT(*) = 1
) AS t;

SELECT
ROUND(COUNT(*)/COUNT(DISTINCT author_name),2)
AS avg_comments_per_user
FROM youtube_comments;

SELECT COUNT(*) AS sql_mentions
FROM youtube_comments
WHERE comment_text LIKE '%SQL%';

SELECT COUNT(*) AS python_mentions
FROM youtube_comments
WHERE comment_text LIKE '%Python%';

SELECT COUNT(*) AS excel_mentions
FROM youtube_comments
WHERE comment_text LIKE '%Excel%';

SELECT COUNT(*) AS powerbi_mentions
FROM youtube_comments
WHERE comment_text LIKE '%Power BI%';

SELECT COUNT(*) AS job_mentions
FROM youtube_comments
WHERE comment_text LIKE '%job%';

SELECT COUNT(*) AS interview_mentions
FROM youtube_comments
WHERE comment_text LIKE '%interview%';

SELECT COUNT(*) AS question_comments
FROM youtube_comments
WHERE comment_text LIKE '%?%';







