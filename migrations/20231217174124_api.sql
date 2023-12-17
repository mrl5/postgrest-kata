CREATE VIEW api.todos WITH ( security_invoker = TRUE
) AS
SELECT
    id,
    due,
    done,
    task
FROM
    data.todos;

GRANT SELECT ON api.todos TO web_anon;

GRANT SELECT, INSERT, UPDATE, DELETE ON api.todos TO todo_user;
