# ArchivesSpace Docker

https://docs.archivesspace.org/administration/docker/

# Update to latest release
```bash
$ ./update-release.sh
```

# Run with SSL Config
```bash
$ cd archivesspace
$ docker compose -f docker-compose.yml -f docker-compose.ssl.yml up --detach
```