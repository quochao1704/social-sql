-- =====================================================
-- SQL Practice Questions - GROUP BY, HAVING & Aggregations
-- =====================================================

-- =====================================================
-- Level 1.5: GROUP BY Fundamentals
-- Focus: COUNT, SUM, AVG, MIN, MAX, GROUP BY, HAVING
-- =====================================================

-- -------------------------
-- Basic Aggregations
-- -------------------------

-- 1. Count posts per user
-- Count how many posts each user has created.
-- Show user_id and post count.
SELECT user_id,
       COUNT(*) AS total_posts
FROM posts
GROUP BY user_id;


-- 2. Count actions per action type
-- For each action_type, show how many times it appears
-- in the actions table.
select action_type, count(*) as total_actions
from actions a
group by a.action_type;


-- 3. Posts per month in 2024
-- Count how many posts were created in each month of 2024.
-- Display month and count.
-- Hint: Use DATE_TRUNC or EXTRACT.
select DATE_TRUNC('month', post_date) as post_month,
       COUNT(*)                       as post_count
from posts
where extract(year from post_date) = 2024
group by post_month
order by post_month;

-- 4. Average posts per user
-- Calculate the average number of posts per user
-- (only users who have at least one post).
select p.user_id, count(*) as avg_post
from posts p
group by p.user_id;


-- 5. Most active user
-- Find the user_id who has created the most posts.
select user_id,
       post_count
from (select user_id,
             COUNT(*)                    as post_count,
             rank() over (
                 order by COUNT(*) desc) as rnk
      from posts
      group by user_id) t
where rnk = 1;


-- -------------------------
-- GROUP BY with HAVING
-- -------------------------

-- 6. Users with more than 5 posts
-- Find all user_ids who have created more than 5 posts.
select user_id,
       COUNT(*) as post_count
from posts
group by user_id
having COUNT(*) = 5;

-- 7. Popular tags
-- Find tags that appear on at least 3 different posts.
-- Show tag_name and count.
select tag_name, count(*) as tag_count
from tags
group by tag_name
having count(*) >= 3
order by tag_count;


-- 8. Action types with low engagement
-- Find action types that have been used fewer than 50 times.
select action_type,
       count(*) as act_count
from actions
group by action_type
having count(*) < 50;

-- 9. Months with high activity
-- Find months in 2024 where more than 15 posts were created.
select DATE_TRUNC('month', post_date) as post_month,
       COUNT(*)                       as post_count
from posts
where extract(year from post_date) = 2024
group by post_month
having COUNT(*) > 15
order by post_count;


-- 10. Users with diverse actions
-- Find users who have performed at least
-- 3 different types of actions.
select a.user_id,
       count(distinct a.action_type) as act_count
from actions a
group by a.user_id
having count(distinct a.action_type) >= 3
order by act_count;

-- -------------------------
-- Multiple Aggregations
-- -------------------------

-- 11. User posting statistics
-- For each user who has posts, show:
-- - user_id
-- - total posts
-- - earliest post_date
-- - latest post_date
select user_id,
       count(post_id) as total_post,
       max(post_date) as earliest,
       min(post_date) as latest
from posts
group by user_id;

-- 12. Tag usage summary
-- For each tag, show:
-- - tag_name
-- - number of posts tagged
-- - earliest post_date it was used on
select tag_name,
       count(p.post_id) as total_posts,
       max(p.post_date)    earliest
from tags t
         join posts p
              on
                  t.post_id = p.post_id
group by t.tag_name;

-- 13. Daily action summary
-- For each date in the actions table, show:
-- - action_date
-- - total actions
-- - number of unique users
-- - number of unique posts
select DATE_TRUNC('day', a.action_date) as action_date,
       COUNT(*)                         as total_actions,
       COUNT(distinct a.user_id)        as total_users,
       COUNT(distinct a.post_id)        as total_posts
from actions a
group by DATE_TRUNC('day', a.action_date)
order by action_date;


-- 14. User engagement metrics
-- For each user, calculate:
-- - total actions performed
-- - total posts created
-- - ratio of actions to posts (if posts exist)
with post_counts as (select user_id,
                            COUNT(*) as total_posts
                     from posts
                     group by user_id),
     action_counts as (select user_id,
                              COUNT(*) as total_actions
                       from actions
                       group by user_id)
select u.user_id,
       u.username,
       coalesce(p.total_posts, 0)   as total_posts,
       coalesce(a.total_actions, 0) as total_actions,
       case
           when coalesce(p.total_posts, 0) > 0
               then ROUND(a.total_actions::decimal / p.total_posts, 2)
           else 0
           end                      as action_post_ratio
from users u
         left join post_counts p on
    p.user_id = u.user_id
         left join action_counts a on
    a.user_id = u.user_id;


-- 15. Monthly growth tracking
-- For each month in 2024, show:
-- - number of new users registered
-- - number of posts created
-- - number of actions performed
WITH months AS (SELECT DATE_TRUNC('month', d)::date AS MONTH
                FROM generate_series(
                             '2024-01-01'::date,
                             '2024-12-31'::date,
                             INTERVAL '1 month'
                     ) d),
     user_counts AS (SELECT DATE_TRUNC('month', registration_date)::date AS MONTH,
                            COUNT(*)                                     AS new_users
                     FROM users
                     WHERE registration_date >= '2024-01-01'
                       AND registration_date < '2025-01-01'
                     GROUP BY DATE_TRUNC('month', registration_date)),
     post_counts AS (SELECT DATE_TRUNC('month', post_date)::date AS MONTH,
                            COUNT(*)                             AS posts_created
                     FROM posts
                     WHERE post_date >= '2024-01-01'
                       AND post_date < '2025-01-01'
                     GROUP BY DATE_TRUNC('month', post_date)),
     action_counts AS (SELECT DATE_TRUNC('month', action_date)::date AS MONTH,
                              COUNT(*)                               AS actions_performed
                       FROM actions
                       WHERE action_date >= '2024-01-01'
                         AND action_date < '2025-01-01'
                       GROUP BY DATE_TRUNC('month', action_date))
SELECT m.month,
       COALESCE(u.new_users, 0)         AS new_users,
       COALESCE(p.posts_created, 0)     AS posts_created,
       COALESCE(a.actions_performed, 0) AS actions_performed
FROM months m
         LEFT JOIN user_counts u ON
    u.month = m.month
         LEFT JOIN post_counts p ON
    p.month = m.month
         LEFT JOIN action_counts a ON
    a.month = m.month
ORDER BY m.month;


-- =====================================================
-- Level 2: Intermediate GROUP BY
-- Focus: Multi-column GROUP BY, subqueries, HAVING
-- =====================================================

-- -------------------------
-- Multi-column GROUP BY
-- -------------------------

-- 16. Posts and actions by user and month
-- For each user and each month:
-- - number of posts created
-- - number of actions performed
WITH bounds AS (SELECT DATE_TRUNC(
                               'month',
                               LEAST(
                                       (SELECT MIN(registration_date) FROM users),
                                       (SELECT MIN(post_date) FROM posts),
                                       (SELECT MIN(action_date) FROM actions)
                               )
                       )::date AS start_month,
                       DATE_TRUNC(
                               'month',
                               GREATEST(
                                       (SELECT MAX(registration_date) FROM users),
                                       (SELECT MAX(post_date) FROM posts),
                                       (SELECT MAX(action_date) FROM actions)
                               )
                       )::date AS end_month),
     months AS (SELECT generate_series(start_month, end_month, INTERVAL '1 month')::date AS MONTH
                FROM bounds),
     post_counts AS (SELECT user_id,
                            DATE_TRUNC('month', post_date)::date AS MONTH,
                            COUNT(*)                             AS posts_created
                     FROM posts
                     GROUP BY user_id,
                              DATE_TRUNC('month', post_date)),
     action_counts AS (SELECT user_id,
                              DATE_TRUNC('month', action_date)::date AS MONTH,
                              COUNT(*)                               AS actions_performed
                       FROM actions
                       GROUP BY user_id,
                                DATE_TRUNC('month', action_date))
SELECT u.user_id,
       m.month,
       COALESCE(pc.posts_created, 0)     AS posts_created,
       COALESCE(ac.actions_performed, 0) AS actions_performed
FROM users u
         CROSS JOIN months m
         LEFT JOIN post_counts pc
                   ON
                       pc.user_id = u.user_id
                           AND pc.month = m.month
         LEFT JOIN action_counts ac
                   ON
                       ac.user_id = u.user_id
                           AND ac.month = m.month
ORDER BY u.user_id,
         m.month;



-- 17. Tag usage by month
-- Show how many times each tag was used
-- in each month of 2024.
WITH months AS (SELECT DATE_TRUNC('month', d)::date AS MONTH
                FROM generate_series(
                             '2024-01-01'::date,
                             '2024-12-31'::date,
                             INTERVAL '1 month'
                     ) d),
     unique_tag AS (SELECT DISTINCT tag_name
                    FROM tags),
     usage_counts AS (SELECT t.tag_name,
                             DATE_TRUNC('month', p.post_date)::date AS post_month,
                             COUNT(t.tag_id)                        AS actual_count
                      FROM tags t
                               LEFT JOIN posts p
                                         ON
                                             t.post_id = p.post_id
                      WHERE EXTRACT('year' FROM p.post_date) = 2024
                      GROUP BY t.tag_name,
                               post_month)
SELECT m.month,
       t.tag_name,
       COALESCE(uc.actual_count, 0) AS times_used
FROM months m
         CROSS JOIN unique_tag t
         LEFT JOIN usage_counts uc
                   ON
                       m.MONTH = uc.post_month
                           AND uc.tag_name = t.tag_name
ORDER BY t.tag_name;


-- 18. Action breakdown by user and type
-- For each user + action_type:
-- - count actions
-- Only show combinations with 5+ actions.
SELECT user_id,
       action_type,
       COUNT(action_id) AS total_actions
FROM actions a
GROUP BY a.user_id,
         a.action_type
HAVING count(a.action_id) > 5;

-- 19. Active vs inactive user statistics
-- Group users by is_active and show:
-- - count of users
-- - average posts per user
-- - total actions performed
WITH posts_created AS (SELECT user_id,
                              count(*) AS total_posts
                       FROM posts
                       GROUP BY user_id),
     actions_performed AS (SELECT user_id,
                                  count(*) AS total_actions
                           FROM actions
                           GROUP BY user_id)
SELECT
    -- 1. Active User Count
    SUM(CASE WHEN u.is_active = true THEN 1 ELSE 0 END)                             AS active_users_count,

    -- 2. Inactive User Count
    SUM(CASE WHEN u.is_active = false THEN 1 ELSE 0 END)                            AS inactive_users_count,

    -- 3. Average Posts per Active User
    -- We use COALESCE(p.total_posts, 0) to count 0 posts for users who made none.
    CAST(SUM(CASE WHEN u.is_active = true THEN COALESCE(p.total_posts, 0) ELSE 0 END) AS REAL) /
    NULLIF(SUM(CASE WHEN u.is_active = true THEN 1 ELSE 0 END), 0)                  AS avg_posts_active,

    -- 4. Average Posts per Inactive User
    CAST(SUM(CASE WHEN u.is_active = false THEN COALESCE(p.total_posts, 0) ELSE 0 END) AS REAL) /
    NULLIF(SUM(CASE WHEN u.is_active = false THEN 1 ELSE 0 END), 0)                 AS avg_posts_inactive,

    -- 5. Total Actions by Active Users
    -- We use COALESCE(a.total_actions, 0) to count 0 actions for users who made none.
    SUM(CASE WHEN u.is_active = true THEN COALESCE(a.total_actions, 0) ELSE 0 END)  AS total_actions_active,

    -- 6. Total Actions by Inactive Users
    SUM(CASE WHEN u.is_active = false THEN COALESCE(a.total_actions, 0) ELSE 0 END) AS total_actions_inactive
FROM users u
         LEFT JOIN posts_created p ON u.user_id = p.user_id
         LEFT JOIN actions_performed a ON u.user_id = a.user_id;


-- 20. User cohort analysis by registration month
-- Group users by registration month and show:
-- - registration month
-- - number of users
-- - total posts
-- - average posts per user

-- The query is joining posts by post month = registration month, but the question asks for:
-- - Total posts created by users in each cohort (regardless of when they posted)
-- - Not just posts created in the same month as registration

WITH post_counts AS (SELECT date_trunc('month', p.post_date)::date AS month, count(p.post_id) as total_posts
                     FROM posts p
                     GROUP BY date_trunc('month', p.post_date)::date)
SELECT DATE_TRUNC('month', u.registration_date)::date AS month,
       count(u.user_id)                               as total_users,
       COALESCE(pc.total_posts, 0)                    as total_posts,
       CASE
           WHEN COUNT(u.user_id) = 0 THEN 0
           WHEN total_posts = 0 THEN 0
           ELSE total_posts::decimal / count(u.user_id)
           END
                                                      AS avg_posts_per_user
FROM users u
         LEFT JOIN post_counts pc ON DATE_TRUNC('month', u.registration_date)::date = pc.month
GROUP BY DATE_TRUNC('month', u.registration_date)::date, pc.total_posts;

-- Correct approach: Join users to posts by user_id, not by month
SELECT DATE_TRUNC('month', u.registration_date)::date                  AS registration_month,
       COUNT(DISTINCT u.user_id)                                       as number_of_users,
       COUNT(p.post_id)                                                as total_posts,
       ROUND(COUNT(p.post_id)::decimal / COUNT(DISTINCT u.user_id), 2) as avg_posts_per_user
FROM users u
         LEFT JOIN posts p ON u.user_id = p.user_id
GROUP BY DATE_TRUNC('month', u.registration_date)::date
ORDER BY registration_month;

-- -------------------------
-- Advanced HAVING
-- -------------------------

-- 21. Consistent posters
-- Find users who created at least
-- one post in at least 3 different months.
SELECT u.user_id,
       u.username,
       COUNT(DISTINCT DATE_TRUNC('month', p.post_date))     as months_posted,
       STRING_AGG(DISTINCT TO_CHAR(p.post_date, 'YYYY-MM'), ', '
                  ORDER BY TO_CHAR(p.post_date, 'YYYY-MM')) as posting_months

FROM users u
         LEFT JOIN posts p ON u.user_id = p.user_id
GROUP BY u.user_id, u.username
HAVING COUNT(DISTINCT DATE_TRUNC('month', p.post_date)) >= 3
ORDER BY months_posted;

-- 22. High-engagement posts
-- Find posts that received actions
-- from at least 5 different users.
SELECT p.*, count(distinct a.user_id) as users_performed
FROM posts p
         INNER JOIN actions a
                    ON p.post_id = a.post_id
GROUP BY p.post_id
HAVING count(distinct a.user_id) >= 5;

-- 23. Versatile taggers
-- Find posts that have at least
-- 3 different tags.
SELECT p.*, count(distinct t.tag_id) as tags_count
FROM posts p
         INNER JOIN public.tags t
                    ON p.post_id = t.post_id
GROUP BY p.post_id
HAVING count(distinct t.tag_id) >= 3;

-- 24. Top contributors
-- Find users who have BOTH:
-- - more than 10 posts
-- - more than 20 actions
SELECT u.user_id,
       u.username,
       count(distinct p.post_id)   as total_posts,
       count(distinct a.action_id) as total_actions
FROM users u
         INNER JOIN public.posts p on u.user_id = p.user_id
         INNER JOIN public.actions a on u.user_id = a.user_id
group by u.user_id, u.username
having count(distinct p.post_id) > 10
   and count(distinct a.action_id) > 20;

-- 25. Declining tags
-- Find tags whose usage in the
-- second half of 2024 is lower
-- than the first half.
-- Hint: Use CASE with conditional aggregation.
SELECT t.tag_name,
       sum(CASE
               WHEN p.post_date > '2024-01-01' AND p.post_date < '2025-06-30' THEN 1
               ELSE 0
           END)            AS first_half,
       sum(CASE
               WHEN p.post_date > '2024-07-01' AND p.post_date < '2025-12-31' THEN 1
               ELSE 0 END) AS second_half

FROM tags t
         INNER JOIN public.posts p ON p.post_id = t.post_id
GROUP BY t.tag_name
HAVING sum(CASE
               WHEN p.post_date > '2024-01-01' AND p.post_date < '2025-06-30' THEN 1
               ELSE 0
    END) > sum(CASE
                   WHEN p.post_date > '2024-07-01' AND p.post_date < '2025-12-31' THEN 1
                   ELSE 0 END);

-- =====================================================
-- Conditional Aggregations (CASE WHEN)
-- =====================================================

-- 26. Post status summary by user
-- For each user, show:
-- - total posts
-- - deleted posts
-- - active posts
-- - deletion rate (%)
SELECT u.*,
       COUNT(*) FILTER (WHERE p.is_deleted)         AS deleted_posts,
       COUNT(*) FILTER (WHERE p.is_deleted = false) AS active_posts,
       ROUND(
               COUNT(*) FILTER (WHERE p.is_deleted)::decimal
                   / NULLIF(COUNT(p.post_id), 0)
                   * 100,
               2
       )                                            AS deletion_rate
FROM users u
         LEFT JOIN posts p
                   ON u.user_id = p.user_id
GROUP BY u.user_id;

-- 27. Action type distribution
-- For each user, count:
-- - likes
-- - comments
-- - shares
-- - saves
-- - other actions
SELECT u.user_id,
       u.username,
       COUNT(*) FILTER (WHERE a.action_type = 'like')        AS like_count,
       COUNT(*) FILTER (WHERE a.action_type = 'comment')     AS comment_count,
       COUNT(*) FILTER (WHERE a.action_type = 'share')       AS share_count,
       COUNT(*) FILTER (WHERE a.action_type = 'save')        AS save_count,
       COUNT(*) FILTER (WHERE a.action_type NOT IN ('like',
                                                    'comment',
                                                    'share',
                                                    'save')) AS other_count
FROM users u
         LEFT JOIN actions a
                   ON u.user_id = a.user_id
GROUP BY u.user_id;

-- 28. Quarterly posting analysis
-- For each quarter of 2024:
-- - total posts
-- - posts by active users
-- - posts by inactive users
SELECT EXTRACT(QUARTER FROM p.post_date)                                           AS quarter,
       COUNT(*)                                                                    AS total_posts,
       SUM(CASE WHEN u.is_active THEN 1 ELSE 0 END)                                AS active_posts,
       SUM(CASE WHEN NOT u.is_active THEN 1 ELSE 0 END)                            AS inactive_posts,
       ROUND(COUNT(CASE WHEN u.is_active THEN 1 END)::decimal / COUNT(*) * 100, 2) AS active_percentage
FROM posts p
         LEFT JOIN users u
                   ON p.user_id = u.user_id
WHERE p.post_date >= DATE '2024-01-01'
  AND p.post_date < DATE '2025-01-01'
GROUP BY EXTRACT(QUARTER FROM p.post_date)
ORDER BY EXTRACT(QUARTER FROM p.post_date);

-- 29. Tag category analysis
-- Group tags into:
-- - Tech
-- - Lifestyle
-- - Entertainment
-- - Other
-- Show post count per category.

-- 30. Weekend vs weekday posting
-- Compare:
-- - posts on weekdays vs weekends
-- - actions on weekdays vs weekends
-- Hint: EXTRACT(DOW) where 0=Sunday, 6=Saturday
SELECT EXTRACT(dow from TIMESTAMP '2025-12-15');

SELECT SUM(CASE
               WHEN EXTRACT(dow from post_date) > 0 and EXTRACT(dow from post_date) < 6
                   THEN 1
               ELSE 0
    END)        AS weekdays_posts,
       SUM(CASE
               WHEN EXTRACT(dow from post_date) = 0 OR EXTRACT(dow from post_date) = 6
                   THEN 1
               ELSE 0
           END) AS weekends_posts
FROM posts;


-- =====================================================
-- Level 3: Advanced Aggregations
-- Focus: Window Functions, STRING_AGG
-- =====================================================
SELECT STRING_AGG(distinct tag_name, ',' ORDER BY tag_name)
FROM tags;

-- -------------------------
-- String Aggregations
-- -------------------------

-- 31. Concatenate tags per post
-- For each post, show post_id
-- and tags as a comma-separated string.
SELECT p.post_id,
       STRING_AGG(distinct t.tag_name, ',' ORDER BY t.tag_name)
FROM posts p
         INNER JOIN tags t
                    ON p.post_id = t.post_id
GROUP BY p.post_id;

-- 32. Users who interacted with posts
-- For each post with at least 3 actions:
-- show post_id and list of unique usernames.
SELECT a.post_id,

       count(a.action_id),
       string_agg(distinct u.username, ',')
FROM actions a
         INNER JOIN users u
                    ON a.user_id = u.user_id
GROUP BY a.post_id
HAVING count(a.action_id) >= 3;

-- 33. Action history per user
-- For each user, create a string like:
-- "like: 15, comment: 8, share: 3"
WITH actions_stat AS (SELECT user_id,
                             action_type,
                             COUNT(*) AS action_count
                      FROM actions
                      GROUP BY user_id, action_type)
SELECT u.username,
       STRING_AGG(
               a.action_type || ': ' || a.action_count,
               ', '
               ORDER BY a.action_type
       ) AS action_history
FROM users u
         LEFT JOIN actions_stat a
                   ON a.user_id = u.user_id
GROUP BY u.user_id,
         u.username
ORDER BY u.user_id;


-- -------------------------
-- Ranking with Aggregations
-- -------------------------

-- 34. Top 3 posts by engagement per month
-- For each month in 2024,
-- find top 3 posts by action count.

-- 35. Percentile analysis
-- Calculate 25th, 50th, 75th percentile for:
-- - posts per user
-- - actions per post


-- -------------------------
-- Complex Business Queries
-- -------------------------

-- 36. Engagement rate by user activity level
-- Classify users by post count:
-- - Inactive (0)
-- - Low (1-3)
-- - Medium (4-10)
-- - High (11+)
-- Show average actions per post per tier.

-- 37. Tag pair analysis
-- Find top 10 most common tag pairs
-- appearing together on the same post.

-- 38. Rolling 7-day action count
-- For each date in December 2024,
-- show total actions in the past 7 days.

-- 39. User retention by cohort
-- For users registered each month of 2024:
-- - posted in registration month
-- - posted in following month
-- - retention rate

-- 40. Cross-table summary report
-- Show in ONE result set:
-- - total users (active vs inactive)
-- - total posts (deleted vs active)
-- - total actions by type
-- - average actions per post
-- - average posts per active user
