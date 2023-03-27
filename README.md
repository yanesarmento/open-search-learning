## Open Search  


Project structure:
```
.
├── docker-compose.yaml
├── 
│   └── 
├── 
│   └── 
└── README.md
```

## Deploy with docker compose

```
$ docker compose up 
...

```

## Expected result

Listing containers must show one container running and the port mapping as below:
```
$ docker ps
```
Navigate to `http://localhost:5601/` in your web browser to access directly the web interface for OpenSearch Dashboards.
Login with the default username (admin) and password (admin).

![page](output.jpg)

Stop and remove the containers. Use `-v` to remove the volumes if looking to erase all data.
```
$ docker compose down -v
```
