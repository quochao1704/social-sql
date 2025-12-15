-- USERS
CREATE TABLE users (
    user_id BIGSERIAL PRIMARY KEY,
    username VARCHAR(100) NOT NULL UNIQUE,
    registration_date TIMESTAMP NOT NULL DEFAULT NOW(),
    is_active BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE posts (
    post_id BIGSERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL,
    content TEXT NOT NULL,
    post_date TIMESTAMP NOT NULL DEFAULT NOW(),
    is_deleted BOOLEAN NOT NULL DEFAULT FALSE,

    CONSTRAINT fk_posts_user
        FOREIGN KEY (user_id)
        REFERENCES users (user_id)
        ON DELETE CASCADE
);

CREATE INDEX idx_user_id
ON posts (user_id);


-- ACTIONS (Like, Comment, Share, etc.)
CREATE TABLE actions (
    action_id BIGSERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL,
    post_id BIGINT NOT NULL,
    action_type VARCHAR(20) NOT NULL,
    action_date TIMESTAMP NOT NULL DEFAULT NOW(),

    CONSTRAINT fk_actions_user
        FOREIGN KEY (user_id)
        REFERENCES users (user_id)
        ON DELETE CASCADE,

    CONSTRAINT fk_actions_post
        FOREIGN KEY (post_id)
        REFERENCES posts (post_id)
        ON DELETE CASCADE
);

CREATE INDEX idx_actions_post
ON actions (post_id);

CREATE INDEX idx_actions_user
ON actions (user_id);

CREATE INDEX idx_actions_post_type
ON actions (post_id, action_type);

-- TAGS
CREATE TABLE tags (
    tag_id BIGSERIAL PRIMARY KEY,
    post_id BIGINT NOT NULL,
    tag_name VARCHAR(50) NOT NULL,

    CONSTRAINT fk_tags_post
        FOREIGN KEY (post_id)
        REFERENCES posts (post_id)
        ON DELETE CASCADE
);

CREATE INDEX idx_tags_post
ON tags (post_id);

CREATE INDEX idx_tags_name
ON tags (tag_name);

