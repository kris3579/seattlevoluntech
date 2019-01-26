-- DDL generated by Postico 1.5.3

-- Table Definition ----------------------------------------------

CREATE TABLE project (
    id SERIAL PRIMARY KEY,
    project_name text UNIQUE,
    project_description text,
    business_name text,
    business_description text,
    creation_date timestamp without time zone DEFAULT now(),
    status text
);

CREATE TABLE skills (
    id SERIAL PRIMARY KEY,
    skill_name text UNIQUE,
    description text
);

INSERT INTO skills VALUES
    (1, 'frontend', null),
    (2, 'backend', null),
    (3, 'full stack', null),
    (4, 'design', null);

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    first_name text,
    last_name text,
    email text,
    phone_number text,
    status text,
    bio text,
    created timestamp without time zone DEFAULT now(),
    updated timestamp
);

-- Indices -------------------------------------------------------

CREATE UNIQUE INDEX project_pkey ON project(id int4_ops);
CREATE UNIQUE INDEX project_project_name_key ON project(project_name text_ops);