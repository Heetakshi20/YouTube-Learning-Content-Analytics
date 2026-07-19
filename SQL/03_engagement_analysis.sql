SELECT
    topic,
    ROUND(AVG(likes),2) AS avg_likes
FROM youtube_comments
GROUP BY topic
ORDER BY avg_likes DESC;

SELECT
    topic,
    SUM(likes) AS total_likes
FROM youtube_comments
GROUP BY topic
ORDER BY total_likes DESC;

SELECT
    author_name,
    LEFT(comment_text,100) AS comment_preview,
    likes,
    topic
FROM youtube_comments
ORDER BY likes DESC
LIMIT 10;

SELECT
    topic,
    ROUND(AVG(reply_count),2) AS avg_replies
FROM youtube_comments
GROUP BY topic
ORDER BY avg_replies DESC;

SELECT
    topic,
    SUM(reply_count) AS total_replies
FROM youtube_comments
GROUP BY topic
ORDER BY total_replies DESC;

SELECT
    author_name,
    LEFT(comment_text,100) AS comment_preview,
    reply_count,
    topic
FROM youtube_comments
ORDER BY reply_count DESC
LIMIT 10;

SELECT
    video_title,
    COUNT(*) AS total_comments,
    SUM(likes) AS total_likes,
    SUM(reply_count) AS total_replies
FROM youtube_comments
GROUP BY video_title
ORDER BY total_comments DESC;