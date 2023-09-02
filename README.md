# SQLite Alpine

This is a minimal Docker image with [SQLite](https://www.sqlite.org/index.html) based on [Alpine Linux](https://alpinelinux.org/).

The image also bundles wget, curl and ca-certificates to allow requests over HTTPS.

It will renovate and auto build on new versions of Alpine Linux and SQLite.

## Usage

### docker run

```bash
docker --rm -it -v $(pwd):/data johnlindahl/sqlite:latest ash
sqlite3 /data/mydb.db
```

### Docker compose

```yaml
version: "3.7"
services:
  sqlite:
    image: johnlindahl/sqlite:latest
    volumes:
      - ./data:/data/
    entrypoint: sqlite3 /data/mydb.db
```
