# ArchivesSpace Docker

https://docs.archivesspace.org/administration/docker/

# Update to latest release
```bash
$ ./update-release.sh
```

# Run with SSL Config
```bash
$ cd archivesspace
$ docker compose -f compose.yml -f compose.ssl.yml up --detach
```