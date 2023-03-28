## Open Search  


Project structure:
```
.
├── docker-compose.yaml
├── data
│   └── data_ingestion.ipynb
│   └── iris.csv
├── outputs
│   └── dashboards.jpg
│   └── token_jupyter.jpg
├── Dockerfile
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

![page](dashboards.jpg)

## Access Jupyter notebook

Navigate to `http://127.0.0.1/:8888/` in your web browser to access directly the web interface for Jupyter Notebooks.
Login with the token at the logs.

![page](token_jupyter.jpg)


Stop and remove the containers. Use `-v` to remove the volumes if looking to erase all data.
```
$ docker compose down -v
```
