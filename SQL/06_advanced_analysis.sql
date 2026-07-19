SELECT
    comment_id,
    likes,
    CASE
        WHEN likes >= 3 THEN 'High Engagement'
        WHEN likes BETWEEN 1 AND 2 THEN 'Medium Engagement'
        ELSE 'Low Engagement'
    END AS engagement_level
FROM youtube_comments;

SELECT
    video_title,
    COUNT(*) AS total_comments,
    RANK() OVER(ORDER BY COUNT(*) DESC) AS ranking
FROM youtube_comments
GROUP BY video_title;

SELECT
    video_title,
    COUNT(*) AS total_comments,
    DENSE_RANK() OVER(ORDER BY COUNT(*) DESC) AS dense_ranking
FROM youtube_comments
GROUP BY video_title;

SELECT
    ROW_NUMBER() OVER(ORDER BY likes DESC) AS row_num,
    author_name,
    likes
FROM youtube_comments;

SELECT *
FROM (
    SELECT
        topic,
        author_name,
        likes,
        comment_text,
        ROW_NUMBER() OVER(PARTITION BY topic ORDER BY likes DESC) AS rn
    FROM youtube_comments
) ranked
WHERE rn = 1;

CREATE VIEW topic_summary AS
SELECT
    topic,
    COUNT(*) AS total_comments,
    SUM(likes) AS total_likes,
    AVG(reply_count) AS avg_replies
FROM youtube_comments
GROUP BY topic;

SELECT *
FROM topic_summary;

WITH topic_stats AS (
    SELECT
        topic,
        COUNT(*) AS total_comments
    FROM youtube_comments
    GROUP BY topic
)
SELECT *
FROM topic_stats
ORDER BY total_comments DESC;

SELECT *
FROM youtube_comments
WHERE likes >
(
    SELECT AVG(likes)
    FROM youtube_comments
);












