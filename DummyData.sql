-- ============================================
-- DUMMY DATA FOR SQL PRACTICE
-- ============================================

-- Clear existing data (optional - uncomment if needed)
-- DELETE FROM actions;
-- DELETE FROM tags;
-- DELETE FROM posts;
-- DELETE FROM users;

-- ============================================
-- USERS TABLE (50 users)
-- ============================================
INSERT INTO users (user_id, username, registration_date, is_active) VALUES
(1, 'alice_wonder', '2023-01-15', true),
(2, 'bob_builder', '2023-02-20', true),
(3, 'charlie_brown', '2023-03-10', true),
(4, 'diana_prince', '2023-04-05', false),
(5, 'edward_stark', '2023-05-12', true),
(6, 'fiona_apple', '2023-06-18', true),
(7, 'george_lucas', '2023-07-22', false),
(8, 'hannah_montana', '2023-08-30', true),
(9, 'isaac_newton', '2023-09-14', true),
(10, 'julia_roberts', '2023-10-08', true),
(11, 'kevin_hart', '2023-11-25', false),
(12, 'laura_croft', '2023-12-03', true),
(13, 'mike_tyson', '2024-01-10', true),
(14, 'nina_simone', '2024-01-20', true),
(15, 'oscar_wilde', '2024-02-14', true),
(16, 'paula_abdul', '2024-02-28', false),
(17, 'quincy_jones', '2024-03-15', true),
(18, 'rachel_green', '2024-03-22', true),
(19, 'steve_jobs', '2024-04-10', true),
(20, 'tina_turner', '2024-04-18', true),
(21, 'ursula_leguin', '2024-05-05', true),
(22, 'victor_hugo', '2024-05-20', false),
(23, 'wendy_williams', '2024-06-01', true),
(24, 'xavier_woods', '2024-06-15', true),
(25, 'yolanda_adams', '2024-07-08', true),
(26, 'zachary_levi', '2024-07-22', true),
(27, 'amber_heard', '2024-08-05', true),
(28, 'bryan_cranston', '2024-08-18', false),
(29, 'chloe_grace', '2024-09-02', true),
(30, 'daniel_craig', '2024-09-15', true),
(31, 'emma_stone', '2024-09-28', true),
(32, 'frank_ocean', '2024-10-10', true),
(33, 'gina_torres', '2024-10-20', true),
(34, 'henry_cavill', '2024-10-28', true),
(35, 'iris_west', '2024-11-05', true),
(36, 'jack_black', '2024-11-12', false),
(37, 'kate_hudson', '2024-11-18', true),
(38, 'leo_dicaprio', '2024-11-25', true),
(39, 'maya_angelou', '2024-12-01', true),
(40, 'neil_armstrong', '2024-12-05', true),
(41, 'olivia_wilde', '2024-12-08', true),
(42, 'peter_parker', '2024-12-10', true),
(43, 'queen_latifah', '2024-12-12', true),
(44, 'ryan_reynolds', '2025-01-05', true),
(45, 'sandra_bullock', '2025-01-10', true),
(46, 'tom_cruise', '2025-01-15', true),
(47, 'uma_thurman', '2025-01-20', false),
(48, 'vin_diesel', '2025-01-22', true),
(49, 'will_smith', '2025-01-25', true),
(50, 'zoe_saldana', '2025-01-28', true);

-- ============================================
-- POSTS TABLE (200 posts)
-- ============================================
INSERT INTO posts (post_id, user_id, content, post_date, is_deleted) VALUES
-- January 2024 posts
(1, 13, 'Starting my fitness journey today!', '2024-01-11', false),
(2, 14, 'Beautiful sunrise this morning', '2024-01-21', false),
(3, 13, 'Week 1 progress update', '2024-01-18', false),
(4, 14, 'My favorite coffee recipe', '2024-01-25', false),
(5, 1, 'Thoughts on AI development', '2024-01-28', false),

-- February 2024 posts
(6, 15, 'Valentine''s Day special post', '2024-02-14', false),
(7, 2, 'Building my first web app', '2024-02-16', false),
(8, 15, 'Love and technology', '2024-02-20', false),
(9, 3, 'Coding challenge completed!', '2024-02-22', true),
(10, 17, 'Music production tips', '2024-02-25', false),

-- March 2024 posts
(11, 17, 'New album coming soon', '2024-03-16', false),
(12, 18, 'Central Perk memories', '2024-03-23', false),
(13, 3, 'Spring cleaning my code', '2024-03-15', false),
(14, 18, 'Coffee culture around the world', '2024-03-28', false),
(15, 1, 'Machine learning basics', '2024-03-30', false),

-- April 2024 posts
(16, 19, 'Innovation never stops', '2024-04-12', false),
(17, 20, 'Concert announcement!', '2024-04-19', false),
(18, 19, 'Design thinking workshop', '2024-04-22', false),
(19, 2, 'Backend optimization tips', '2024-04-25', false),
(20, 20, 'Behind the scenes rehearsal', '2024-04-28', false),

-- May 2024 posts
(21, 21, 'Sci-fi book recommendations', '2024-05-06', false),
(22, 23, 'Morning motivation', '2024-05-02', false),
(23, 21, 'Writing process explained', '2024-05-15', false),
(24, 5, 'Winter is coming... to streaming', '2024-05-20', false),
(25, 23, 'Healthy lifestyle tips', '2024-05-25', false),

-- June 2024 posts
(26, 24, 'Gaming setup tour', '2024-06-16', false),
(27, 23, 'Wellness Wednesday', '2024-06-05', false),
(28, 24, 'New game release review', '2024-06-22', false),
(29, 6, 'Recipe of the day: Apple pie', '2024-06-10', false),
(30, 1, 'Deep learning frameworks comparison', '2024-06-28', false),

-- July 2024 posts
(31, 25, 'Sunday gospel vibes', '2024-07-09', false),
(32, 26, 'Movie set stories', '2024-07-23', false),
(33, 25, 'Music and faith', '2024-07-18', false),
(34, 26, 'Acting tips for beginners', '2024-07-28', false),
(35, 5, 'Fantasy series marathon', '2024-07-15', false),

-- August 2024 posts
(36, 27, 'Beach day essentials', '2024-08-06', false),
(37, 29, 'Fashion trends 2024', '2024-08-03', false),
(38, 27, 'Summer reading list', '2024-08-15', true),
(39, 29, 'Red carpet looks', '2024-08-20', false),
(40, 2, 'Database design patterns', '2024-08-25', false),

-- September 2024 posts
(41, 30, 'Action movie workout routine', '2024-09-16', false),
(42, 31, 'Fall fashion inspiration', '2024-09-29', false),
(43, 30, 'Stunt training basics', '2024-09-22', false),
(44, 31, 'Behind the scenes photoshoot', '2024-09-30', false),
(45, 3, 'Refactoring legacy code', '2024-09-18', false),

-- October 2024 posts
(46, 32, 'New music Friday', '2024-10-11', false),
(47, 33, 'Empowering women in tech', '2024-10-21', false),
(48, 34, 'Superman training regimen', '2024-10-29', false),
(49, 32, 'Studio session vibes', '2024-10-18', false),
(50, 33, 'Career advice for developers', '2024-10-25', false),

-- November 2024 posts
(51, 35, 'Speed force explained', '2024-11-06', false),
(52, 37, 'Holiday movie marathon list', '2024-11-19', false),
(53, 38, 'Environmental activism', '2024-11-26', false),
(54, 35, 'Comic book review', '2024-11-15', false),
(55, 37, 'Rom-com recommendations', '2024-11-28', false),

-- December 2024 posts
(56, 39, 'Poetry and life lessons', '2024-12-02', false),
(57, 40, 'Moon landing anniversary', '2024-12-06', false),
(58, 41, 'Directing my first short film', '2024-12-09', false),
(59, 42, 'Spiderman cosplay tutorial', '2024-12-11', false),
(60, 43, 'Hip hop history lesson', '2024-12-13', false),

-- Additional posts for variety (distributed across users and dates)
(61, 1, 'Neural networks explained', '2024-03-05', false),
(62, 1, 'Python vs R for data science', '2024-05-10', false),
(63, 1, 'Ethical AI considerations', '2024-07-12', false),
(64, 1, 'Natural language processing basics', '2024-09-08', false),
(65, 1, 'Computer vision applications', '2024-11-14', false),

(66, 2, 'REST API best practices', '2024-03-08', false),
(67, 2, 'Microservices architecture', '2024-05-18', false),
(68, 2, 'Docker containerization guide', '2024-07-20', false),
(69, 2, 'CI/CD pipeline setup', '2024-09-12', false),
(70, 2, 'Cloud computing comparison', '2024-11-22', false),

(71, 3, 'JavaScript async/await', '2024-01-30', false),
(72, 3, 'React hooks tutorial', '2024-04-15', false),
(73, 3, 'TypeScript benefits', '2024-06-25', false),
(74, 3, 'Frontend performance optimization', '2024-08-30', false),
(75, 3, 'CSS Grid vs Flexbox', '2024-10-18', false),

(76, 5, 'Game of Thrones analysis', '2024-02-10', false),
(77, 5, 'Character development in fantasy', '2024-04-20', false),
(78, 5, 'World building tips', '2024-06-30', false),
(79, 5, 'Writing compelling dialogue', '2024-08-15', false),
(80, 5, 'Fantasy vs Sci-fi genres', '2024-10-25', false),

(81, 13, 'Nutrition basics', '2024-02-15', false),
(82, 13, 'Home workout routines', '2024-04-10', false),
(83, 13, 'Protein shake recipes', '2024-06-20', false),
(84, 13, 'Recovery and rest importance', '2024-08-25', false),
(85, 13, 'Year-end fitness goals', '2024-12-01', false),

(86, 17, 'Beat making 101', '2024-04-05', false),
(87, 17, 'Mixing and mastering tips', '2024-06-15', false),
(88, 17, 'Music theory for producers', '2024-08-20', false),
(89, 17, 'Collaboration in music', '2024-10-10', false),
(90, 17, 'Studio equipment guide', '2024-12-05', false),

(91, 19, 'Product design philosophy', '2024-05-05', false),
(92, 19, 'User experience matters', '2024-07-10', false),
(93, 19, 'Innovation vs iteration', '2024-09-15', false),
(94, 19, 'Leadership lessons', '2024-11-20', false),

(95, 21, 'The Left Hand of Darkness review', '2024-06-12', false),
(96, 21, 'Creating alien cultures', '2024-08-18', false),
(97, 21, 'Feminism in sci-fi', '2024-10-22', false),

(98, 25, 'Gospel music evolution', '2024-08-12', false),
(99, 25, 'Spiritual journey through music', '2024-10-15', false),

(100, 30, 'James Bond marathon', '2024-10-05', false),
(101, 30, 'Method acting techniques', '2024-11-18', false),

(102, 32, 'R&B influences', '2024-11-08', false),
(103, 32, 'Songwriting process', '2024-12-03', false),

(104, 38, 'Climate change awareness', '2024-12-08', false),

(105, 6, 'Baking sourdough bread', '2024-07-25', false),
(106, 6, 'Farm to table cooking', '2024-09-20', false),
(107, 6, 'Holiday cookie recipes', '2024-12-10', false),

(108, 8, 'Concert tour memories', '2024-01-15', false),
(109, 8, 'Best of both worlds', '2024-05-22', false),
(110, 8, 'Growing up in spotlight', '2024-09-28', false),

(111, 10, 'Oscar winning moments', '2024-02-28', false),
(112, 10, 'Method acting preparation', '2024-06-18', false),
(113, 10, 'Favorite movie roles', '2024-10-30', false),

(114, 12, 'Archaeology adventures', '2024-03-12', false),
(115, 12, 'Ancient civilizations', '2024-07-08', false),
(116, 12, 'Treasure hunting tips', '2024-11-15', false),

(117, 14, 'Jazz standards playlist', '2024-03-25', false),
(118, 14, 'Civil rights through music', '2024-07-22', false),
(119, 14, 'Piano improvisation', '2024-11-28', false),

(120, 18, 'Coffee brewing methods', '2024-05-15', false),
(121, 18, 'Espresso vs drip', '2024-08-10', false),
(122, 18, 'Latte art tutorial', '2024-11-12', false),

(123, 20, 'Soul music legacy', '2024-06-08', false),
(124, 20, 'Stage presence tips', '2024-09-18', false),
(125, 20, 'Vocal warm-up exercises', '2024-12-02', false),

(126, 23, 'Mental health awareness', '2024-07-15', false),
(127, 23, 'Work-life balance', '2024-10-05', false),
(128, 23, 'Self-care Sunday', '2024-12-08', false),

(129, 24, 'Esports tournament recap', '2024-08-28', false),
(130, 24, 'Gaming PC build guide', '2024-11-10', false),

(131, 26, 'Superhero movie rankings', '2024-09-25', false),
(132, 26, 'Voice acting techniques', '2024-12-06', false),

(133, 27, 'Ocean conservation', '2024-10-12', false),
(134, 27, 'Sustainable fashion', '2024-12-11', false),

(135, 29, 'Young Hollywood', '2024-11-02', false),
(136, 29, 'Acting workshops', '2024-12-09', false),

(137, 31, 'La La Land behind scenes', '2024-11-25', false),
(138, 31, 'Oscar night memories', '2024-12-07', false),

(139, 33, 'Firefly reunion hopes', '2024-12-04', false),

(140, 34, 'The Witcher season review', '2024-11-30', false),

(141, 35, 'Flash comics collection', '2024-12-12', false),

(142, 37, 'Rom-com filming locations', '2024-12-10', false),

(143, 39, 'I Know Why the Caged Bird Sings', '2024-12-13', false),

(144, 40, 'Apollo 11 memories', '2024-12-07', false),

(145, 41, 'Independent filmmaking', '2024-12-11', false),

(146, 42, 'Marvel universe deep dive', '2024-12-12', false),

(147, 43, 'Queen of Hip Hop', '2024-12-14', false),

-- Recent posts (late November to December for recency queries)
(148, 1, 'Year in review: AI developments', '2024-11-28', false),
(149, 2, 'Kubernetes best practices', '2024-11-29', false),
(150, 3, 'Next.js 14 features', '2024-11-30', false),
(151, 13, 'Holiday fitness tips', '2024-12-01', false),
(152, 17, 'End of year playlist', '2024-12-03', false),
(153, 19, 'Innovation in 2024', '2024-12-04', false),
(154, 21, 'Winter reading recommendations', '2024-12-05', false),
(155, 25, 'Christmas gospel songs', '2024-12-06', false),
(156, 30, 'Action movies of 2024', '2024-12-07', false),
(157, 32, 'New year new music', '2024-12-08', false),
(158, 35, 'Comic Con highlights', '2024-12-09', false),
(159, 38, 'Environmental wins 2024', '2024-12-10', false),
(160, 41, 'Film festival submissions', '2024-12-11', false),

-- Some deleted posts for practice
(161, 5, 'Controversial opinion deleted', '2024-06-15', true),
(162, 10, 'Accidental post', '2024-08-22', true),
(163, 15, 'Old draft published by mistake', '2024-09-10', true),
(164, 20, 'Duplicate content removed', '2024-10-18', true),
(165, 25, 'Incorrect information corrected', '2024-11-05', true),

-- Additional posts for more data points
(166, 44, 'First post here!', '2025-01-06', false),
(167, 45, 'Excited to join this community', '2025-01-11', false),
(168, 46, 'Top Gun memories', '2025-01-16', false),
(169, 48, 'Fast and Furious family', '2025-01-23', false),
(170, 49, 'Fresh Prince returns', '2025-01-26', false),
(171, 50, 'Guardians of the Galaxy vol 3', '2025-01-29', false),

(172, 44, 'Deadpool humor guide', '2025-01-08', false),
(173, 45, 'Gravity filming experience', '2025-01-12', false),
(174, 46, 'Mission Impossible stunts', '2025-01-17', false),
(175, 48, 'Groot speaking lessons', '2025-01-24', false),
(176, 49, 'Aladdin live action', '2025-01-27', false),
(177, 50, 'Avatar sequel thoughts', '2025-01-30', false),

-- More posts for time-based queries
(178, 1, 'Q4 2024 tech trends', '2024-10-15', false),
(179, 2, 'Serverless architecture', '2024-10-20', false),
(180, 3, 'Web3 and blockchain', '2024-10-25', false),
(181, 6, 'Thanksgiving recipes', '2024-11-20', false),
(182, 8, 'Holiday concert tour', '2024-11-22', false),
(183, 10, 'Awards season predictions', '2024-11-24', false),
(184, 12, 'Year-end archaeology finds', '2024-11-26', false),
(185, 14, 'Jazz winter collection', '2024-11-27', false),
(186, 18, 'Holiday coffee drinks', '2024-11-29', false),
(187, 21, 'December book releases', '2024-12-01', false),
(188, 23, 'End of year reflection', '2024-12-02', false),
(189, 26, 'Holiday movies guide', '2024-12-04', false),
(190, 29, 'Winter fashion 2024', '2024-12-06', false),
(191, 31, 'Awards campaign season', '2024-12-08', false),
(192, 33, 'Tech diversity report', '2024-12-10', false),
(193, 37, 'Christmas rom-coms', '2024-12-12', false),
(194, 39, 'Poetry for dark times', '2024-12-13', false),
(195, 42, 'Spider-verse analysis', '2024-12-13', false),
(196, 43, 'Hip hop year in review', '2024-12-14', false),

-- Final posts for comprehensive data
(197, 13, 'New year fitness challenge', '2024-12-14', false),
(198, 17, 'Music production masterclass', '2024-12-14', false),
(199, 25, 'Gospel Christmas special', '2024-12-14', false),
(200, 38, 'Climate action now', '2024-12-14', false);

-- ============================================
-- TAGS TABLE (300+ tag entries)
-- ============================================
INSERT INTO tags (tag_id, post_id, tag_name) VALUES
-- Technology tags
(1, 1, 'fitness'),
(2, 1, 'health'),
(3, 5, 'technology'),
(4, 5, 'AI'),
(5, 7, 'technology'),
(6, 7, 'webdev'),
(7, 9, 'programming'),
(8, 9, 'challenge'),
(9, 13, 'coding'),
(10, 13, 'bestpractices'),
(11, 15, 'AI'),
(12, 15, 'machinelearning'),
(13, 19, 'backend'),
(14, 19, 'optimization'),
(15, 30, 'AI'),
(16, 30, 'deeplearning'),
(17, 40, 'database'),
(18, 40, 'design'),
(19, 45, 'coding'),
(20, 45, 'refactoring'),

-- Music tags
(21, 10, 'music'),
(22, 10, 'production'),
(23, 11, 'music'),
(24, 11, 'announcement'),
(25, 17, 'music'),
(26, 17, 'concert'),
(27, 20, 'music'),
(28, 20, 'behindthescenes'),
(29, 31, 'music'),
(30, 31, 'gospel'),
(31, 33, 'music'),
(32, 33, 'faith'),
(33, 46, 'music'),
(34, 46, 'newrelease'),
(35, 49, 'music'),
(36, 49, 'studio'),

-- Lifestyle tags
(37, 2, 'lifestyle'),
(38, 2, 'nature'),
(39, 3, 'fitness'),
(40, 3, 'progress'),
(41, 4, 'coffee'),
(42, 4, 'recipe'),
(43, 6, 'valentines'),
(44, 6, 'love'),
(45, 8, 'lifestyle'),
(46, 8, 'technology'),
(47, 12, 'coffee'),
(48, 12, 'culture'),
(49, 14, 'coffee'),
(50, 14, 'travel'),

-- Career/Professional tags
(51, 16, 'innovation'),
(52, 16, 'technology'),
(53, 18, 'design'),
(54, 18, 'workshop'),
(55, 22, 'motivation'),
(56, 22, 'lifestyle'),
(57, 25, 'health'),
(58, 25, 'lifestyle'),
(59, 47, 'tech'),
(60, 47, 'career'),
(61, 50, 'career'),
(62, 50, 'advice'),

-- Entertainment tags
(63, 21, 'books'),
(64, 21, 'scifi'),
(65, 23, 'writing'),
(66, 23, 'books'),
(67, 24, 'entertainment'),
(68, 24, 'streaming'),
(69, 26, 'gaming'),
(70, 26, 'setup'),
(71, 28, 'gaming'),
(72, 28, 'review'),
(73, 32, 'movies'),
(74, 32, 'behindthescenes'),
(75, 34, 'acting'),
(76, 34, 'tips'),

-- Food tags
(77, 29, 'food'),
(78, 29, 'recipe'),
(79, 105, 'food'),
(80, 105, 'baking'),
(81, 106, 'food'),
(82, 106, 'cooking'),
(83, 107, 'food'),
(84, 107, 'holiday'),

-- More comprehensive tagging
(85, 35, 'entertainment'),
(86, 35, 'fantasy'),
(87, 36, 'lifestyle'),
(88, 36, 'summer'),
(89, 37, 'fashion'),
(90, 37, 'trends'),
(91, 39, 'fashion'),
(92, 39, 'redcarpet'),
(93, 41, 'fitness'),
(94, 41, 'workout'),
(95, 42, 'fashion'),
(96, 42, 'fall'),
(97, 43, 'fitness'),
(98, 43, 'training'),
(99, 44, 'fashion'),
(100, 44, 'photography'),

-- More AI/Tech tags
(101, 61, 'AI'),
(102, 61, 'neuralnetworks'),
(103, 62, 'datascience'),
(104, 62, 'programming'),
(105, 63, 'AI'),
(106, 63, 'ethics'),
(107, 64, 'AI'),
(108, 64, 'NLP'),
(109, 65, 'AI'),
(110, 65, 'computervision'),

-- Backend/DevOps tags
(111, 66, 'backend'),
(112, 66, 'API'),
(113, 67, 'backend'),
(114, 67, 'microservices'),
(115, 68, 'devops'),
(116, 68, 'docker'),
(117, 69, 'devops'),
(118, 69, 'CICD'),
(119, 70, 'cloud'),
(120, 70, 'technology'),

-- Frontend tags
(121, 71, 'programming'),
(122, 71, 'javascript'),
(123, 72, 'webdev'),
(124, 72, 'react'),
(125, 73, 'programming'),
(126, 73, 'typescript'),
(127, 74, 'webdev'),
(128, 74, 'performance'),
(129, 75, 'webdev'),
(130, 75, 'CSS'),

-- Fantasy/Writing tags
(131, 76, 'entertainment'),
(132, 76, 'fantasy'),
(133, 77, 'writing'),
(134, 77, 'fantasy'),
(135, 78, 'writing'),
(136, 78, 'worldbuilding'),
(137, 79, 'writing'),
(138, 79, 'dialogue'),
(139, 80, 'books'),
(140, 80, 'genre'),

-- Fitness tags
(141, 81, 'fitness'),
(142, 81, 'nutrition'),
(143, 82, 'fitness'),
(144, 82, 'workout'),
(145, 83, 'fitness'),
(146, 83, 'nutrition'),
(147, 84, 'fitness'),
(148, 84, 'recovery'),
(149, 85, 'fitness'),
(150, 85, 'goals'),

-- Music production tags
(151, 86, 'music'),
(152, 86, 'production'),
(153, 87, 'music'),
(154, 87, 'mixing'),
(155, 88, 'music'),
(156, 88, 'theory'),
(157, 89, 'music'),
(158, 89, 'collaboration'),
(159, 90, 'music'),
(160, 90, 'equipment'),

-- Product/Design tags
(161, 91, 'design'),
(162, 91, 'product'),
(163, 92, 'design'),
(164, 92, 'UX'),
(165, 93, 'innovation'),
(166, 93, 'product'),
(167, 94, 'leadership'),
(168, 94, 'career'),

-- Sci-fi/Writing tags
(169, 95, 'books'),
(170, 95, 'scifi'),
(171, 96, 'writing'),
(172, 96, 'scifi'),
(173, 97, 'books'),
(174, 97, 'feminism'),

-- Gospel/Music tags
(175, 98, 'music'),
(176, 98, 'gospel'),
(177, 99, 'music'),
(178, 99, 'spiritual'),

-- Acting tags
(179, 100, 'movies'),
(180, 100, 'jamesbond'),
(181, 101, 'acting'),
(182, 101, 'method'),

-- R&B tags
(183, 102, 'music'),
(184, 102, 'RnB'),
(185, 103, 'music'),
(186, 103, 'songwriting'),

-- Environmental tags
(187, 104, 'environment'),
(188, 104, 'climatechange'),

-- Concert/Music tags
(189, 108, 'music'),
(190, 108, 'concert'),
(191, 109, 'music'),
(192, 109, 'entertainment'),
(193, 110, 'entertainment'),
(194, 110, 'celebrity'),

-- Acting/Movies tags
(195, 111, 'movies'),
(196, 111, 'oscar'),
(197, 112, 'acting'),
(198, 112, 'method'),
(199, 113, 'movies'),
(200, 113, 'acting'),

-- Archaeology tags
(201, 114, 'archaeology'),
(202, 114, 'adventure'),
(203, 115, 'archaeology'),
(204, 115, 'history'),
(205, 116, 'archaeology'),
(206, 116, 'treasure'),

-- Jazz tags
(207, 117, 'music'),
(208, 117, 'jazz'),
(209, 118, 'music'),
(210, 118, 'civilrights'),
(211, 119, 'music'),
(212, 119, 'piano'),

-- Coffee tags
(213, 120, 'coffee'),
(214, 120, 'brewing'),
(215, 121, 'coffee'),
(216, 121, 'espresso'),
(217, 122, 'coffee'),
(218, 122, 'latteart'),

-- Soul music tags
(219, 123, 'music'),
(220, 123, 'soul'),
(221, 124, 'music'),
(222, 124, 'performance'),
(223, 125, 'music'),
(224, 125, 'vocal'),

-- Wellness tags
(225, 126, 'health'),
(226, 126, 'mentalhealth'),
(227, 127, 'lifestyle'),
(228, 127, 'worklife'),
(229, 128, 'lifestyle'),
(230, 128, 'selfcare'),

-- Gaming tags
(231, 129, 'gaming'),
(232, 129, 'esports'),
(233, 130, 'gaming'),
(234, 130, 'PC'),

-- Movie/Acting tags
(235, 131, 'movies'),
(236, 131, 'superhero'),
(237, 132, 'acting'),
(238, 132, 'voiceacting'),

-- Environmental/Fashion tags
(239, 133, 'environment'),
(240, 133, 'ocean'),
(241, 134, 'fashion'),
(242, 134, 'sustainable'),

-- Young Hollywood tags
(243, 135, 'entertainment'),
(244, 135, 'hollywood'),
(245, 136, 'acting'),
(246, 136, 'workshop'),

-- Oscar/Movies tags
(247, 137, 'movies'),
(248, 137, 'lalaland'),
(249, 138, 'movies'),
(250, 138, 'oscar'),

-- TV tags
(251, 139, 'entertainment'),
(252, 139, 'firefly'),
(253, 140, 'entertainment'),
(254, 140, 'witcher'),

-- Comics tags
(255, 141, 'comics'),
(256, 141, 'flash'),
(257, 146, 'comics'),
(258, 146, 'marvel'),

-- Romance/Movies tags
(259, 142, 'movies'),
(260, 142, 'romcom'),
(261, 193, 'movies'),
(262, 193, 'christmas'),

-- Literature tags
(263, 143, 'books'),
(264, 143, 'poetry'),
(265, 194, 'poetry'),
(266, 194, 'literature'),

-- Space/History tags
(267, 144, 'space'),
(268, 144, 'history'),
(269, 57, 'space'),
(270, 57, 'apollo'),

-- Film/Independent tags
(271, 145, 'movies'),
(272, 145, 'independent'),
(273, 58, 'movies'),
(274, 58, 'directing'),

-- Hip Hop tags
(275, 147, 'music'),
(276, 147, 'hiphop'),
(277, 60, 'music'),
(278, 60, 'hiphop'),
(279, 196, 'music'),
(280, 196, 'hiphop'),

-- Year-end tags
(281, 148, 'technology'),
(282, 148, 'AI'),
(283, 149, 'devops'),
(284, 149, 'kubernetes'),
(285, 150, 'webdev'),
(286, 150, 'nextjs'),
(287, 151, 'fitness'),
(288, 151, 'holiday'),
(289, 152, 'music'),
(290, 152, 'playlist'),

-- 2025 tags
(291, 166, 'introduction'),
(292, 167, 'introduction'),
(293, 168, 'movies'),
(294, 168, 'topgun'),
(295, 169, 'movies'),
(296, 169, 'fastandfurious'),
(297, 170, 'entertainment'),
(298, 170, 'freshprince'),
(299, 171, 'movies'),
(300, 171, 'marvel'),

-- Additional variety tags
(301, 172, 'movies'),
(302, 172, 'deadpool'),
(303, 173, 'movies'),
(304, 173, 'gravity'),
(305, 174, 'movies'),
(306, 174, 'missionimpossible'),
(307, 175, 'movies'),
(308, 175, 'groot'),
(309, 176, 'movies'),
(310, 176, 'disney'),
(311, 177, 'movies'),
(312, 177, 'avatar'),

-- Recent activity tags
(313, 153, 'innovation'),
(314, 153, 'technology'),
(315, 154, 'books'),
(316, 154, 'winter'),
(317, 155, 'music'),
(318, 155, 'christmas'),
(319, 156, 'movies'),
(320, 156, 'action'),
(321, 157, 'music'),
(322, 157, 'newyear'),
(323, 158, 'comics'),
(324, 158, 'comiccon'),
(325, 159, 'environment'),
(326, 159, 'yearinreview'),
(327, 160, 'movies'),
(328, 160, 'festival'),

-- More recent posts tags
(329, 178, 'technology'),
(330, 178, 'trends'),
(331, 179, 'cloud'),
(332, 179, 'serverless'),
(333, 180, 'technology'),
(334, 180, 'web3'),
(335, 181, 'food'),
(336, 181, 'thanksgiving'),
(337, 182, 'music'),
(338, 182, 'concert'),
(339, 183, 'movies'),
(340, 183, 'awards'),
(341, 184, 'archaeology'),
(342, 184, 'yearend'),
(343, 185, 'music'),
(344, 185, 'jazz'),
(345, 186, 'coffee'),
(346, 186, 'holiday'),
(347, 187, 'books'),
(348, 187, 'december'),
(349, 188, 'lifestyle'),
(350, 188, 'reflection'),

-- Final batch tags
(351, 189, 'movies'),
(352, 189, 'holiday'),
(353, 190, 'fashion'),
(354, 190, 'winter'),
(355, 191, 'movies'),
(356, 191, 'awards'),
(357, 192, 'tech'),
(358, 192, 'diversity'),
(359, 195, 'movies'),
(360, 195, 'spiderverse'),
(361, 197, 'fitness'),
(362, 197, 'challenge'),
(363, 198, 'music'),
(364, 198, 'masterclass'),
(365, 199, 'music'),
(366, 199, 'christmas'),
(367, 200, 'environment'),
(368, 200, 'action');

-- ============================================
-- ACTIONS TABLE (500 actions)
-- ============================================
INSERT INTO actions (action_id, user_id, post_id, action_type, action_date) VALUES
-- Actions on early posts
(1, 2, 1, 'like', '2024-01-11'),
(2, 3, 1, 'like', '2024-01-11'),
(3, 5, 1, 'comment', '2024-01-12'),
(4, 14, 2, 'like', '2024-01-21'),
(5, 1, 2, 'share', '2024-01-21'),
(6, 15, 3, 'like', '2024-01-18'),
(7, 2, 3, 'comment', '2024-01-19'),
(8, 1, 4, 'like', '2024-01-25'),
(9, 13, 4, 'save', '2024-01-25'),
(10, 2, 5, 'like', '2024-01-28'),

-- February actions
(11, 3, 5, 'comment', '2024-01-29'),
(12, 5, 5, 'share', '2024-01-30'),
(13, 1, 6, 'like', '2024-02-14'),
(14, 18, 6, 'like', '2024-02-14'),
(15, 19, 6, 'share', '2024-02-15'),
(16, 1, 7, 'like', '2024-02-16'),
(17, 3, 7, 'comment', '2024-02-17'),
(18, 5, 7, 'like', '2024-02-18'),
(19, 2, 8, 'like', '2024-02-20'),
(20, 17, 10, 'like', '2024-02-25'),

-- March actions
(21, 1, 10, 'comment', '2024-02-26'),
(22, 19, 10, 'share', '2024-02-27'),
(23, 2, 11, 'like', '2024-03-16'),
(24, 3, 11, 'like', '2024-03-17'),
(25, 1, 12, 'like', '2024-03-23'),
(26, 2, 12, 'comment', '2024-03-24'),
(27, 5, 13, 'like', '2024-03-15'),
(28, 1, 13, 'like', '2024-03-16'),
(29, 18, 14, 'like', '2024-03-28'),
(30, 1, 14, 'save', '2024-03-29'),

-- April actions
(31, 2, 15, 'like', '2024-03-30'),
(32, 3, 15, 'comment', '2024-03-31'),
(33, 1, 16, 'like', '2024-04-12'),
(34, 5, 16, 'share', '2024-04-13'),
(35, 20, 17, 'like', '2024-04-19'),
(36, 21, 17, 'like', '2024-04-20'),
(37, 1, 18, 'like', '2024-04-22'),
(38, 2, 18, 'comment', '2024-04-23'),
(39, 3, 19, 'like', '2024-04-25'),
(40, 1, 19, 'like', '2024-04-26'),

-- May actions
(41, 17, 20, 'like', '2024-04-28'),
(42, 19, 20, 'share', '2024-04-29'),
(43, 1, 21, 'like', '2024-05-06'),
(44, 5, 21, 'comment', '2024-05-07'),
(45, 23, 22, 'like', '2024-05-02'),
(46, 1, 22, 'like', '2024-05-03'),
(47, 2, 23, 'like', '2024-05-15'),
(48, 21, 23, 'comment', '2024-05-16'),
(49, 1, 24, 'like', '2024-05-20'),
(50, 19, 24, 'share', '2024-05-21'),

-- June actions
(51, 23, 25, 'like', '2024-05-25'),
(52, 1, 25, 'save', '2024-05-26'),
(53, 24, 26, 'like', '2024-06-16'),
(54, 2, 26, 'comment', '2024-06-17'),
(55, 1, 27, 'like', '2024-06-05'),
(56, 23, 27, 'like', '2024-06-06'),
(57, 3, 28, 'like', '2024-06-22'),
(58, 24, 28, 'share', '2024-06-23'),
(59, 1, 29, 'like', '2024-06-10'),
(60, 6, 29, 'comment', '2024-06-11'),

-- July actions
(61, 2, 30, 'like', '2024-06-28'),
(62, 3, 30, 'like', '2024-06-29'),
(63, 25, 31, 'like', '2024-07-09'),
(64, 1, 31, 'share', '2024-07-10'),
(65, 26, 32, 'like', '2024-07-23'),
(66, 2, 32, 'comment', '2024-07-24'),
(67, 1, 33, 'like', '2024-07-18'),
(68, 25, 33, 'like', '2024-07-19'),
(69, 3, 34, 'like', '2024-07-28'),
(70, 26, 34, 'share', '2024-07-29'),

-- August actions
(71, 1, 35, 'like', '2024-07-15'),
(72, 5, 35, 'comment', '2024-07-16'),
(73, 27, 36, 'like', '2024-08-06'),
(74, 1, 36, 'like', '2024-08-07'),
(75, 29, 37, 'like', '2024-08-03'),
(76, 2, 37, 'share', '2024-08-04'),
(77, 1, 39, 'like', '2024-08-20'),
(78, 29, 39, 'comment', '2024-08-21'),
(79, 3, 40, 'like', '2024-08-25'),
(80, 2, 40, 'like', '2024-08-26'),

-- September actions
(81, 30, 41, 'like', '2024-09-16'),
(82, 1, 41, 'share', '2024-09-17'),
(83, 31, 42, 'like', '2024-09-29'),
(84, 2, 42, 'comment', '2024-09-30'),
(85, 1, 43, 'like', '2024-09-22'),
(86, 30, 43, 'like', '2024-09-23'),
(87, 3, 44, 'like', '2024-09-30'),
(88, 31, 44, 'share', '2024-10-01'),
(89, 2, 45, 'like', '2024-09-18'),
(90, 3, 45, 'comment', '2024-09-19'),

-- October actions
(91, 32, 46, 'like', '2024-10-11'),
(92, 1, 46, 'like', '2024-10-12'),
(93, 33, 47, 'like', '2024-10-21'),
(94, 2, 47, 'share', '2024-10-22'),
(95, 34, 48, 'like', '2024-10-29'),
(96, 1, 48, 'comment', '2024-10-30'),
(97, 1, 49, 'like', '2024-10-18'),
(98, 32, 49, 'like', '2024-10-19'),
(99, 3, 50, 'like', '2024-10-25'),
(100, 33, 50, 'share', '2024-10-26'),

-- November actions
(101, 35, 51, 'like', '2024-11-06'),
(102, 1, 51, 'comment', '2024-11-07'),
(103, 37, 52, 'like', '2024-11-19'),
(104, 2, 52, 'like', '2024-11-20'),
(105, 38, 53, 'like', '2024-11-26'),
(106, 1, 53, 'share', '2024-11-27'),
(107, 1, 54, 'like', '2024-11-15'),
(108, 35, 54, 'like', '2024-11-16'),
(109, 3, 55, 'like', '2024-11-28'),
(110, 37, 55, 'comment', '2024-11-29'),

-- December actions
(111, 39, 56, 'like', '2024-12-02'),
(112, 1, 56, 'like', '2024-12-03'),
(113, 40, 57, 'like', '2024-12-06'),
(114, 2, 57, 'share', '2024-12-07'),
(115, 41, 58, 'like', '2024-12-09'),
(116, 1, 58, 'comment', '2024-12-10'),
(117, 42, 59, 'like', '2024-12-11'),
(118, 3, 59, 'like', '2024-12-12'),
(119, 43, 60, 'like', '2024-12-13'),
(120, 1, 60, 'share', '2024-12-14'),

-- More varied actions on popular posts
(121, 5, 1, 'like', '2024-01-13'),
(122, 6, 1, 'share', '2024-01-14'),
(123, 7, 2, 'like', '2024-01-22'),
(124, 8, 2, 'comment', '2024-01-23'),
(125, 9, 3, 'like', '2024-01-20'),
(126, 10, 3, 'save', '2024-01-21'),
(127, 11, 4, 'like', '2024-01-26'),
(128, 12, 4, 'comment', '2024-01-27'),
(129, 13, 5, 'like', '2024-01-29'),
(130, 14, 5, 'share', '2024-01-30'),

-- Additional engagement on AI posts
(131, 15, 5, 'like', '2024-01-31'),
(132, 16, 5, 'comment', '2024-02-01'),
(133, 17, 5, 'save', '2024-02-02'),
(134, 18, 15, 'like', '2024-03-31'),
(135, 19, 15, 'comment', '2024-04-01'),
(136, 20, 15, 'share', '2024-04-02'),
(137, 21, 30, 'like', '2024-06-29'),
(138, 22, 30, 'comment', '2024-06-30'),
(139, 23, 30, 'save', '2024-07-01'),
(140, 24, 61, 'like', '2024-03-06'),

-- Tech posts engagement
(141, 25, 61, 'comment', '2024-03-07'),
(142, 26, 62, 'like', '2024-05-11'),
(143, 27, 62, 'share', '2024-05-12'),
(144, 28, 63, 'like', '2024-07-13'),
(145, 29, 63, 'comment', '2024-07-14'),
(146, 30, 64, 'like', '2024-09-09'),
(147, 31, 64, 'save', '2024-09-10'),
(148, 32, 65, 'like', '2024-11-15'),
(149, 33, 65, 'comment', '2024-11-16'),
(150, 34, 66, 'like', '2024-03-09'),

-- Backend/DevOps engagement
(151, 35, 66, 'share', '2024-03-10'),
(152, 36, 67, 'like', '2024-05-19'),
(153, 37, 67, 'comment', '2024-05-20'),
(154, 38, 68, 'like', '2024-07-21'),
(155, 39, 68, 'save', '2024-07-22'),
(156, 40, 69, 'like', '2024-09-13'),
(157, 41, 69, 'comment', '2024-09-14'),
(158, 42, 70, 'like', '2024-11-23'),
(159, 43, 70, 'share', '2024-11-24'),
(160, 1, 71, 'like', '2024-01-31'),

-- Frontend engagement
(161, 2, 71, 'comment', '2024-02-01'),
(162, 3, 72, 'like', '2024-04-16'),
(163, 5, 72, 'share', '2024-04-17'),
(164, 6, 73, 'like', '2024-06-26'),
(165, 7, 73, 'save', '2024-06-27'),
(166, 8, 74, 'like', '2024-08-31'),
(167, 9, 74, 'comment', '2024-09-01'),
(168, 10, 75, 'like', '2024-10-19'),
(169, 11, 75, 'share', '2024-10-20'),
(170, 12, 76, 'like', '2024-02-11'),

-- Fantasy/Writing engagement
(171, 13, 76, 'comment', '2024-02-12'),
(172, 14, 77, 'like', '2024-04-21'),
(173, 15, 77, 'save', '2024-04-22'),
(174, 16, 78, 'like', '2024-07-01'),
(175, 17, 78, 'comment', '2024-07-02'),
(176, 18, 79, 'like', '2024-08-16'),
(177, 19, 79, 'share', '2024-08-17'),
(178, 20, 80, 'like', '2024-10-26'),
(179, 21, 80, 'comment', '2024-10-27'),
(180, 22, 81, 'like', '2024-02-16'),

-- Fitness engagement
(181, 23, 81, 'save', '2024-02-17'),
(182, 24, 82, 'like', '2024-04-11'),
(183, 25, 82, 'comment', '2024-04-12'),
(184, 26, 83, 'like', '2024-06-21'),
(185, 27, 83, 'share', '2024-06-22'),
(186, 28, 84, 'like', '2024-08-26'),
(187, 29, 84, 'save', '2024-08-27'),
(188, 30, 85, 'like', '2024-12-02'),
(189, 31, 85, 'comment', '2024-12-03'),
(190, 32, 86, 'like', '2024-04-06'),

-- Music production engagement
(191, 33, 86, 'share', '2024-04-07'),
(192, 34, 87, 'like', '2024-06-16'),
(193, 35, 87, 'comment', '2024-06-17'),
(194, 36, 88, 'like', '2024-08-21'),
(195, 37, 88, 'save', '2024-08-22'),
(196, 38, 89, 'like', '2024-10-11'),
(197, 39, 89, 'comment', '2024-10-12'),
(198, 40, 90, 'like', '2024-12-06'),
(199, 41, 90, 'share', '2024-12-07'),
(200, 42, 91, 'like', '2024-05-06'),

-- Product/Design engagement
(201, 43, 91, 'comment', '2024-05-07'),
(202, 1, 92, 'like', '2024-07-11'),
(203, 2, 92, 'save', '2024-07-12'),
(204, 3, 93, 'like', '2024-09-16'),
(205, 5, 93, 'comment', '2024-09-17'),
(206, 6, 94, 'like', '2024-11-21'),
(207, 7, 94, 'share', '2024-11-22'),
(208, 8, 95, 'like', '2024-06-13'),
(209, 9, 95, 'comment', '2024-06-14'),
(210, 10, 96, 'like', '2024-08-19'),

-- Recent posts engagement (important for time-based queries)
(211, 11, 148, 'like', '2024-11-28'),
(212, 12, 148, 'comment', '2024-11-29'),
(213, 13, 148, 'share', '2024-11-30'),
(214, 14, 149, 'like', '2024-11-29'),
(215, 15, 149, 'save', '2024-11-30'),
(216, 16, 150, 'like', '2024-11-30'),
(217, 17, 150, 'comment', '2024-12-01'),
(218, 18, 151, 'like', '2024-12-01'),
(219, 19, 151, 'share', '2024-12-02'),
(220, 20, 152, 'like', '2024-12-03'),

-- More recent engagement
(221, 21, 152, 'comment', '2024-12-04'),
(222, 22, 153, 'like', '2024-12-04'),
(223, 23, 153, 'save', '2024-12-05'),
(224, 24, 154, 'like', '2024-12-05'),
(225, 25, 154, 'comment', '2024-12-06'),
(226, 26, 155, 'like', '2024-12-06'),
(227, 27, 155, 'share', '2024-12-07'),
(228, 28, 156, 'like', '2024-12-07'),
(229, 29, 156, 'save', '2024-12-08'),
(230, 30, 157, 'like', '2024-12-08'),

-- Latest engagement
(231, 31, 157, 'comment', '2024-12-09'),
(232, 32, 158, 'like', '2024-12-09'),
(233, 33, 158, 'share', '2024-12-10'),
(234, 34, 159, 'like', '2024-12-10'),
(235, 35, 159, 'comment', '2024-12-11'),
(236, 36, 160, 'like', '2024-12-11'),
(237, 37, 160, 'save', '2024-12-12'),
(238, 38, 56, 'like', '2024-12-03'),
(239, 39, 56, 'comment', '2024-12-04'),
(240, 40, 57, 'like', '2024-12-07'),

-- Cross-user engagement patterns
(241, 1, 66, 'like', '2024-03-09'),
(242, 1, 67, 'like', '2024-05-19'),
(243, 1, 68, 'like', '2024-07-21'),
(244, 1, 69, 'like', '2024-09-13'),
(245, 1, 70, 'like', '2024-11-23'),
(246, 2, 61, 'like', '2024-03-06'),
(247, 2, 62, 'like', '2024-05-11'),
(248, 2, 63, 'like', '2024-07-13'),
(249, 2, 64, 'like', '2024-09-09'),
(250, 2, 65, 'like', '2024-11-15'),

-- Power user alice_wonder (user 1) - lots of activity
(251, 1, 76, 'like', '2024-02-11'),
(252, 1, 77, 'like', '2024-04-21'),
(253, 1, 78, 'like', '2024-07-01'),
(254, 1, 79, 'like', '2024-08-16'),
(255, 1, 80, 'like', '2024-10-26'),
(256, 1, 81, 'like', '2024-02-16'),
(257, 1, 82, 'like', '2024-04-11'),
(258, 1, 83, 'like', '2024-06-21'),
(259, 1, 84, 'like', '2024-08-26'),
(260, 1, 85, 'like', '2024-12-02'),

-- User 2 (bob_builder) - consistent engagement
(261, 2, 76, 'comment', '2024-02-12'),
(262, 2, 77, 'comment', '2024-04-22'),
(263, 2, 78, 'comment', '2024-07-02'),
(264, 2, 79, 'comment', '2024-08-17'),
(265, 2, 80, 'comment', '2024-10-27'),
(266, 2, 81, 'comment', '2024-02-17'),
(267, 2, 82, 'comment', '2024-04-12'),
(268, 2, 83, 'comment', '2024-06-22'),
(269, 2, 84, 'comment', '2024-08-27'),
(270, 2, 85, 'comment', '2024-12-03'),

-- User 3 (charlie_brown) - active developer
(271, 3, 61, 'comment', '2024-03-07'),
(272, 3, 62, 'comment', '2024-05-12'),
(273, 3, 63, 'comment', '2024-07-14'),
(274, 3, 64, 'comment', '2024-09-10'),
(275, 3, 65, 'comment', '2024-11-16'),
(276, 3, 66, 'like', '2024-03-10'),
(277, 3, 67, 'like', '2024-05-20'),
(278, 3, 68, 'like', '2024-07-22'),
(279, 3, 69, 'like', '2024-09-14'),
(280, 3, 70, 'like', '2024-11-24'),

-- Multiple actions on popular posts
(281, 5, 10, 'like', '2024-02-26'),
(282, 6, 10, 'comment', '2024-02-27'),
(283, 7, 10, 'save', '2024-02-28'),
(284, 8, 10, 'like', '2024-03-01'),
(285, 9, 11, 'like', '2024-03-17'),
(286, 10, 11, 'comment', '2024-03-18'),
(287, 11, 11, 'share', '2024-03-19'),
(288, 12, 12, 'like', '2024-03-24'),
(289, 13, 12, 'save', '2024-03-25'),
(290, 14, 12, 'comment', '2024-03-26'),

-- Viral post (post 16 - Innovation never stops)
(291, 1, 16, 'like', '2024-04-12'),
(292, 2, 16, 'like', '2024-04-12'),
(293, 3, 16, 'like', '2024-04-13'),
(294, 5, 16, 'share', '2024-04-13'),
(295, 6, 16, 'comment', '2024-04-13'),
(296, 7, 16, 'like', '2024-04-14'),
(297, 8, 16, 'save', '2024-04-14'),
(298, 9, 16, 'like', '2024-04-15'),
(299, 10, 16, 'comment', '2024-04-15'),
(300, 11, 16, 'share', '2024-04-16'),

-- Sequential actions (like followed by share)
(301, 13, 81, 'like', '2024-02-16'),
(302, 13, 81, 'share', '2024-02-16'),
(303, 14, 82, 'like', '2024-04-11'),
(304, 14, 82, 'share', '2024-04-11'),
(305, 15, 83, 'like', '2024-06-21'),
(306, 15, 83, 'share', '2024-06-21'),
(307, 16, 84, 'like', '2024-08-26'),
(308, 16, 84, 'share', '2024-08-26'),
(309, 17, 85, 'like', '2024-12-02'),
(310, 17, 85, 'share', '2024-12-02'),

-- More sequential actions for question 34
(311, 18, 1, 'like', '2024-01-12'),
(312, 18, 1, 'share', '2024-01-12'),
(313, 19, 5, 'like', '2024-01-29'),
(314, 19, 5, 'share', '2024-01-29'),
(315, 20, 15, 'like', '2024-03-31'),
(316, 20, 15, 'share', '2024-03-31'),
(317, 21, 30, 'like', '2024-06-29'),
(318, 21, 30, 'share', '2024-06-29'),
(319, 22, 61, 'like', '2024-03-06'),
(320, 22, 61, 'share', '2024-03-07'),

-- Consistent user activity over months (for streak calculation)
(321, 13, 91, 'like', '2024-05-05'),
(322, 13, 92, 'like', '2024-07-10'),
(323, 13, 93, 'like', '2024-09-15'),
(324, 13, 94, 'like', '2024-11-20'),
(325, 13, 148, 'like', '2024-11-28'),
(326, 13, 149, 'like', '2024-11-29'),
(327, 13, 150, 'like', '2024-11-30'),
(328, 13, 151, 'like', '2024-12-01'),
(329, 13, 152, 'like', '2024-12-03'),
(330, 13, 153, 'like', '2024-12-04'),

-- More engagement for collaborative posts (5+ different users)
(331, 15, 16, 'like', '2024-04-17'),
(332, 16, 16, 'comment', '2024-04-18'),
(333, 17, 30, 'like', '2024-06-30'),
(334, 18, 30, 'comment', '2024-07-01'),
(335, 19, 30, 'like', '2024-07-02'),
(336, 20, 61, 'like', '2024-03-08'),
(337, 21, 61, 'share', '2024-03-09'),
(338, 22, 61, 'comment', '2024-03-10'),
(339, 23, 148, 'like', '2024-11-29'),
(340, 24, 148, 'comment', '2024-11-30'),

-- Additional collaborative engagement
(341, 25, 148, 'share', '2024-12-01'),
(342, 26, 148, 'like', '2024-12-02'),
(343, 27, 148, 'save', '2024-12-03'),
(344, 28, 5, 'like', '2024-01-30'),
(345, 29, 5, 'comment', '2024-01-31'),
(346, 30, 5, 'share', '2024-02-01'),
(347, 31, 5, 'like', '2024-02-02'),
(348, 32, 5, 'save', '2024-02-03'),
(349, 33, 15, 'like', '2024-04-01'),
(350, 34, 15, 'comment', '2024-04-02'),

-- Recent activity (last 30 days from Dec 14, 2024)
(351, 1, 181, 'like', '2024-11-20'),
(352, 2, 181, 'comment', '2024-11-21'),
(353, 3, 182, 'like', '2024-11-22'),
(354, 5, 182, 'share', '2024-11-23'),
(355, 6, 183, 'like', '2024-11-24'),
(356, 1, 183, 'comment', '2024-11-25'),
(357, 2, 184, 'like', '2024-11-26'),
(358, 3, 184, 'save', '2024-11-27'),
(359, 5, 185, 'like', '2024-11-27'),
(360, 1, 185, 'share', '2024-11-28'),

-- Very recent actions (last 2 weeks)
(361, 2, 186, 'like', '2024-11-29'),
(362, 3, 186, 'comment', '2024-11-30'),
(363, 5, 187, 'like', '2024-12-01'),
(364, 6, 187, 'save', '2024-12-02'),
(365, 1, 188, 'like', '2024-12-02'),
(366, 2, 188, 'comment', '2024-12-03'),
(367, 3, 189, 'like', '2024-12-04'),
(368, 5, 189, 'share', '2024-12-05'),
(369, 1, 190, 'like', '2024-12-06'),
(370, 2, 190, 'comment', '2024-12-07'),

-- Last week actions
(371, 3, 191, 'like', '2024-12-08'),
(372, 5, 191, 'save', '2024-12-09'),
(373, 1, 192, 'like', '2024-12-10'),
(374, 2, 192, 'comment', '2024-12-11'),
(375, 3, 193, 'like', '2024-12-12'),
(376, 5, 193, 'share', '2024-12-13'),
(377, 1, 194, 'like', '2024-12-13'),
(378, 2, 194, 'comment', '2024-12-14'),
(379, 3, 195, 'like', '2024-12-14'),
(380, 5, 195, 'save', '2024-12-14'),

-- Today's actions (Dec 14, 2024)
(381, 6, 196, 'like', '2024-12-14'),
(382, 7, 196, 'comment', '2024-12-14'),
(383, 8, 197, 'like', '2024-12-14'),
(384, 9, 197, 'share', '2024-12-14'),
(385, 10, 198, 'like', '2024-12-14'),
(386, 11, 198, 'save', '2024-12-14'),
(387, 12, 199, 'like', '2024-12-14'),
(388, 13, 199, 'comment', '2024-12-14'),
(389, 14, 200, 'like', '2024-12-14'),
(390, 15, 200, 'share', '2024-12-14'),

-- More variety in action types
(391, 16, 60, 'bookmark', '2024-12-13'),
(392, 17, 60, 'follow', '2024-12-13'),
(393, 18, 147, 'like', '2024-12-14'),
(394, 19, 147, 'repost', '2024-12-14'),
(395, 20, 146, 'like', '2024-12-12'),
(396, 21, 146, 'comment', '2024-12-13'),
(397, 22, 145, 'like', '2024-12-11'),
(398, 23, 145, 'share', '2024-12-12'),
(399, 24, 144, 'like', '2024-12-07'),
(400, 25, 144, 'save', '2024-12-08'),

-- Declining activity users (for churn prediction)
(401, 7, 20, 'like', '2024-04-28'),
(402, 7, 21, 'like', '2024-05-06'),
(403, 7, 22, 'like', '2024-05-02'),
(404, 7, 23, 'comment', '2024-05-15'),
(405, 7, 24, 'like', '2024-05-20'),
(406, 11, 30, 'like', '2024-06-28'),
(407, 11, 31, 'like', '2024-07-09'),
(408, 11, 32, 'comment', '2024-07-23'),
(409, 11, 33, 'like', '2024-07-18'),
(410, 11, 34, 'like', '2024-07-28'),

-- Day of week patterns (for seasonal analysis)
(411, 1, 100, 'like', '2024-10-05'), -- Saturday
(412, 2, 100, 'like', '2024-10-06'), -- Sunday
(413, 3, 101, 'like', '2024-11-18'), -- Monday
(414, 5, 102, 'like', '2024-11-08'), -- Friday
(415, 6, 103, 'like', '2024-12-03'), -- Tuesday
(416, 7, 104, 'like', '2024-12-08'), -- Sunday
(417, 8, 105, 'like', '2024-07-25'), -- Thursday
(418, 9, 106, 'like', '2024-09-20'), -- Friday
(419, 10, 107, 'like', '2024-12-10'), -- Tuesday
(420, 11, 108, 'like', '2024-01-15'), -- Monday

-- Weekend activity
(421, 12, 109, 'like', '2024-05-22'), -- Wednesday
(422, 13, 110, 'like', '2024-09-28'), -- Saturday
(423, 14, 111, 'like', '2024-02-28'), -- Wednesday
(424, 15, 112, 'like', '2024-06-18'), -- Tuesday
(425, 16, 113, 'like', '2024-10-30'), -- Wednesday
(426, 17, 114, 'like', '2024-03-12'), -- Tuesday
(427, 18, 115, 'like', '2024-07-08'), -- Monday
(428, 19, 116, 'like', '2024-11-15'), -- Friday
(429, 20, 117, 'like', '2024-03-25'), -- Monday
(430, 21, 118, 'like', '2024-07-22'), -- Monday

-- More actions for gap analysis
(431, 5, 35, 'like', '2024-07-15'),
(432, 5, 76, 'like', '2024-02-11'),
(433, 5, 77, 'comment', '2024-04-21'),
(434, 5, 91, 'like', '2024-05-05'),
(435, 5, 100, 'like', '2024-10-05'),
(436, 5, 148, 'like', '2024-11-28'),
(437, 5, 160, 'like', '2024-12-11'),
(438, 5, 194, 'like', '2024-12-13'),
(439, 8, 2, 'like', '2024-01-22'),
(440, 8, 108, 'comment', '2024-01-15'),

-- Additional actions for time-based calculations
(441, 8, 109, 'like', '2024-05-23'),
(442, 8, 110, 'like', '2024-09-29'),
(443, 8, 181, 'like', '2024-11-20'),
(444, 8, 182, 'comment', '2024-11-22'),
(445, 10, 111, 'like', '2024-02-29'),
(446, 10, 112, 'comment', '2024-06-19'),
(447, 10, 113, 'like', '2024-10-31'),
(448, 10, 183, 'like', '2024-11-24'),
(449, 10, 190, 'like', '2024-12-07'),
(450, 10, 194, 'comment', '2024-12-13'),

-- 2025 actions (new users)
(451, 44, 166, 'like', '2025-01-06'),
(452, 45, 167, 'like', '2025-01-11'),
(453, 46, 168, 'like', '2025-01-16'),
(454, 48, 169, 'like', '2025-01-23'),
(455, 49, 170, 'like', '2025-01-26'),
(456, 50, 171, 'like', '2025-01-29'),
(457, 44, 172, 'comment', '2025-01-08'),
(458, 45, 173, 'comment', '2025-01-12'),
(459, 46, 174, 'share', '2025-01-17'),
(460, 48, 175, 'like', '2025-01-24'),

-- Cross engagement between new users
(461, 49, 176, 'save', '2025-01-27'),
(462, 50, 177, 'comment', '2025-01-30'),
(463, 44, 173, 'like', '2025-01-13'),
(464, 45, 168, 'like', '2025-01-17'),
(465, 46, 166, 'like', '2025-01-07'),
(466, 48, 172, 'like', '2025-01-09'),
(467, 49, 175, 'like', '2025-01-24'),
(468, 50, 169, 'like', '2025-01-24'),
(469, 1, 166, 'like', '2025-01-06'),
(470, 2, 167, 'like', '2025-01-11'),

-- Final batch of actions for comprehensive coverage
(471, 3, 168, 'like', '2025-01-16'),
(472, 5, 169, 'like', '2025-01-23'),
(473, 6, 170, 'like', '2025-01-26'),
(474, 7, 171, 'like', '2025-01-29'),
(475, 8, 172, 'like', '2025-01-08'),
(476, 9, 173, 'like', '2025-01-12'),
(477, 10, 174, 'like', '2025-01-17'),
(478, 11, 175, 'like', '2025-01-24'),
(479, 12, 176, 'like', '2025-01-27'),
(480, 13, 177, 'like', '2025-01-30'),

-- More recent activity for last 30 days queries
(481, 14, 160, 'like', '2024-12-12'),
(482, 15, 159, 'like', '2024-12-11'),
(483, 16, 158, 'like', '2024-12-10'),
(484, 17, 157, 'like', '2024-12-09'),
(485, 18, 156, 'like', '2024-12-08'),
(486, 19, 155, 'like', '2024-12-07'),
(487, 20, 154, 'like', '2024-12-06'),
(488, 21, 153, 'like', '2024-12-05'),
(489, 22, 152, 'like', '2024-12-04'),
(490, 23, 151, 'like', '2024-12-02'),

-- Final actions
(491, 24, 150, 'like', '2024-12-01'),
(492, 25, 149, 'like', '2024-11-30'),
(493, 26, 148, 'like', '2024-11-29'),
(494, 27, 187, 'like', '2024-12-02'),
(495, 28, 188, 'like', '2024-12-03'),
(496, 29, 189, 'like', '2024-12-05'),
(497, 30, 190, 'like', '2024-12-07'),
(498, 31, 191, 'like', '2024-12-09'),
(499, 32, 192, 'like', '2024-12-11'),
(500, 33, 193, 'like', '2024-12-13');

-- ============================================
-- DATA INSERTION COMPLETE
-- ============================================

-- Verify the data
--SELECT 'Users' as table_name, COUNT(*) as row_count FROM users
--UNION ALL
--SELECT 'Posts', COUNT(*) FROM posts
--UNION ALL
--SELECT 'Tags', COUNT(*) FROM tags
--UNION ALL
--SELECT 'Actions', COUNT(*) FROM actions;