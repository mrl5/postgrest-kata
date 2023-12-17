# PostgREST kata

https://postgrest.org


## Tools

```console
cargo install just
just dev-tools
```


## HOWTO bootstrap database

### One time bootstrap

You will need two terminals:
1. Let's create our container with vanilla postgres first
```console
just db-only
```

2. We have vanilla postgres with empty database for the project. Now let's
   bootstrap it in 2nd terminal:
```console
just db-bootstrap
```

### Migration

```console
just db-migrate
```


## Run

```console
just run
```
