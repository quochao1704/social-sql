-- =====================================================
-- SQL Practice Questions
-- =====================================================
-- =========================
-- Level 1: Easy Questions
-- Focus: Basic SELECT, WHERE, ORDER BY, COUNT, basic JOINs
-- =========================
-- 1. Retrieve all users
-- Write a query to select all columns from the users table.
select
	*
from
	users;
-- 2. Active users only
-- Find all users where is_active is true.
select
	*
from
	users u
where
	u.is_active = true;
-- 3. Count total posts
-- Count the total number of posts in the posts table.
select
	count(*)
from
	posts;
-- 4. Recent posts
-- Select all posts ordered by post_date in descending order (newest first).
select
	*
from
	posts
order by
	post_date desc;
-- 5. Specific user's posts
-- Find all posts created by a user with user_id = 5.
select
	*
from
	posts
where
	user_id = 5;
-- 6. Non-deleted posts
-- Retrieve all posts where is_deleted is false.
select
	*
from
	posts
where
	is_deleted = false;
-- 7. User information
-- Get the username and registration_date for user with user_id = 10.
select
	username,
	registration_date
from
	users
where
	user_id = 10;
-- 8. Count actions
-- Count how many actions are recorded in the actions table.
select
	count(*)
from
	actions;
-- 9. Unique action types
-- Find all distinct action_types from the actions table.
select
	distinct action_type
from
	actions;
-- 10. Posts with specific tag
-- Find all post_ids that have the tag_name 'technology'
-- (requires JOIN with tags table).
select
	p.post_id
from
	posts p
join tags t 
on
	p.post_id = t.post_id
where
	t.tag_name = 'technology';

-- Use Exists
select
	p.post_id
from
	posts p
where
	exists (
	select
		1
	from
		tags t
	where
		t.post_id = p.post_id
		and t.tag_name = 'technology')
