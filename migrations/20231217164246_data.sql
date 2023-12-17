CREATE TABLE data.todos (
    done boolean NOT NULL DEFAULT FALSE,
    due timestamptz,
    id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    task text NOT NULL
);

INSERT INTO data.todos (task)
    VALUES ('finish tutorial 0'),
    ('pat self on back');

