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
