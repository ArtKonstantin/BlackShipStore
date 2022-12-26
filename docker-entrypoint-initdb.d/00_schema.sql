CREATE TABLE pirates
(
    id   BIGSERIAL PRIMARY KEY,
    name TEXT      NOT NULL
);

CREATE TABLE roles
(
    id BIGSERIAL PRIMARY KEY,
    name TEXT    NOT NULL
);

CREATE TABLE pirates_roles
(
    id   BIGSERIAL PRIMARY KEY,
    pirate_id BIGINT      NOT NUll,
    role_id   BIGINT      NOT NUll
);

CREATE TABLE credentials
(
    id   BIGSERIAL PRIMARY KEY,
    pirate_id BIGINT      NOT NUll,
    login     TEXT    NOT NULL,
    password  TEXT    NOT NULL,
    activity_status BOOLEAN     NOT NULL
);

CREATE TABLE status
(
    id   BIGSERIAL PRIMARY KEY,
    name TEXT    NOT NULL
);

CREATE TABLE orders
(
    id             BIGSERIAL PRIMARY KEY,
    pirate_id      BIGINT      NOT NUll,
    status_id      BIGINT      NOT NUll,
    order_date   TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    completed_date TIMESTAMPTZ
);

CREATE TABLE categories
(
    id   BIGSERIAL PRIMARY KEY,
    name TEXT    NOT NULL
);

CREATE TABLE items
(
    id   BIGSERIAL PRIMARY KEY,
    category_id BIGINT      NOT NUll,
    name TEXT    NOT NULL
);

CREATE TABLE attributes
(
    id   BIGSERIAL PRIMARY KEY,
    name TEXT    NOT NULL
);

CREATE TABLE values
(
    id   BIGSERIAL PRIMARY KEY,
    attribute_id BIGINT      NOT NUll,
    name TEXT    NOT NULL
);

CREATE TABLE articles
(
    id   BIGSERIAL PRIMARY KEY,
    price BIGINT      NOT NUll,
    amount BIGINT      NOT NUll
);

CREATE TABLE items_values
(
    id   BIGSERIAL PRIMARY KEY,
    item_id BIGINT      NOT NUll,
    value_id   BIGINT      NOT NUll,
    article_id BIGINT      NOT NUll
);

CREATE TABLE articles_orders
(
    id   BIGSERIAL PRIMARY KEY,
    article_id BIGINT      NOT NUll,
    order_id   BIGINT      NOT NUll,
    amount BIGINT      NOT NUll
);

