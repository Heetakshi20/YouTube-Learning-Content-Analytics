SELECT COUNT(*) AS total_comments
FROM youtube_comments;

SELECT COUNT(DISTINCT video_id) AS total_videos
FROM youtube_comments;

SELECT COUNT(DISTINCT author_name) AS unique_authors
FROM youtube_comments;

SELECT
    comment_type,
    COUNT(*) AS total
FROM youtube_comments
GROUP BY comment_type;

SELECT
    topic,
    COUNT(*) AS total_comments
FROM youtube_comments
GROUP BY topic
ORDER BY total_comments DESC;



