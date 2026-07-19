CREATE DATABASE youtube_comment_analysis;

USE youtube_comment_analysis;

CREATE TABLE youtube_comments (
    comment_id VARCHAR(100) PRIMARY KEY,
    author_name VARCHAR(255),
    author_is_channel_owner BOOLEAN,
    comment_text TEXT,
    creator_hearted BOOLEAN,
    video_url TEXT,
    published_time VARCHAR(100),
    reply_count INT DEFAULT 0,
    reply_to_comment_id VARCHAR(100),
    video_title VARCHAR(500),
    comment_type VARCHAR(50),
    video_id VARCHAR(100),
    likes INT DEFAULT 0,
    topic VARCHAR(50)
);

SHOW TABLES;

DESCRIBE youtube_comments;

SELECT COUNT(*) AS total_comments;

ALTER TABLE youtube_comments CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

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

SELECT
video_title,
COUNT(*) AS total_comments
FROM youtube_comments
GROUP BY video_title
ORDER BY total_comments DESC;

SELECT
ROUND(AVG(likes),2) AS average_likes
FROM youtube_comments;

SELECT MAX(likes)
FROM youtube_comments;

SELECT
ROUND(AVG(reply_count),2)
FROM youtube_comments;

SELECT
creator_hearted,
COUNT(*)
FROM youtube_comments
GROUP BY creator_hearted;











