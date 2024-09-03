
# Postgres Sharding

## Credential

```shell
Host : pgcat
Pass : 6432
User : yugabyte
Pass : yugabyte
Init DB : yugabyte
```

## Test

```shell
SELECT * FROM pg_stat_activity WHERE query LIKE '%test_table%';

CREATE TABLE test_table (
    id SERIAL PRIMARY KEY,
    data TEXT
);

INSERT INTO test_table (id, data) VALUES (1, 'new_data');

SELECT * FROM test_table WHERE id = 1s;
```
