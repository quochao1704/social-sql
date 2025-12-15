
-- =========================
-- Level 3: Hard Questions
-- Focus: CTEs, Window Functions, Advanced SQL
-- =========================

-- 26. User retention analysis
-- Find users who created posts in their first month after registration
-- AND are still creating posts in the last 30 days.

-- 27. Running total of posts
-- Create a running total of posts created by date
-- (cumulative count over time).

-- 28. Top content creators by month
-- For each month in 2024, find the top 3 users
-- who created the most posts.

-- 29. User engagement score
-- Engagement score = (number of posts * 2) + (number of actions * 1)
-- Rank users by this score.

-- 30. Dormant user identification
-- Find users who were once active (created posts),
-- but haven't had any posts or actions in the last 90 days.

-- 31. Tag co-occurrence
-- Find pairs of tags that frequently appear together
-- on the same posts (at least 5 times).

-- 32. Post virality metric
-- For each post, calculate:
-- action_count / days_since_post_creation.

-- 33. Cohort analysis
-- Group users by registration month
-- and show how many posts each cohort created over time.

-- 34. Sequential actions
-- Find users who performed action_type 'like'
-- immediately followed by action_type 'share'
-- on the same post.

-- 35. Percentile ranking
-- Rank users by post count
-- and show which percentile each user falls into.

-- 36. Month-over-month growth
-- Calculate the MoM percentage growth
-- in number of new posts created.

-- 37. Churn prediction data
-- Identify users whose activity declined by more than 50%
-- comparing last 30 days vs previous 30 days.

-- 38. Content lifecycle
-- For each post, calculate the number of days
-- between post creation and the last action on it.

-- 39. Power users identification
-- Find users in the top 10% for BOTH:
-- post creation AND total actions.

-- 40. Cross-table engagement matrix
-- For each user, show:
-- total posts,
-- total actions,
-- number of distinct action types,
-- and whether the user is active.

-- 41. Longest streak
-- Find each user's longest streak of consecutive days
-- with at least one post or action.

-- 42. Network effect
-- Find posts that have actions
-- from at least 5 different users.

-- 43. Seasonal patterns
-- Identify which day of the week
-- has the highest average posting activity,
-- grouped by month.

-- 44. Gap analysis
-- Find users who had a gap of more than 30 days
-- between consecutive posts,
-- and calculate the average gap length.

-- 45. Compound growth query
-- Find users whose post count grew
-- by at least 20% each month
-- for 3 consecutive months.