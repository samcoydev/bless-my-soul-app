# Bless My Soul App

This repository is home to a couple of docker compose files you 
can use to fire up an instance of BMS quickly. 

It is still possible to get the project running by cloning the 
backend and frontend projects and configuring them, but using 
these docker compose files should make the process much simpler.


### Setting up the `.env` file.

Before doing anything, you'll need to set up your `.env` file.

The `.env.sample` as of now, is configured for the **Local** 
and **Development** docker compose files. To use the sample,
just run the following.

```
cp .env.sample .env
```

### Local Instance

To fire up an instance of BMS on your local, you can use the 
`docker-compose.yml` file.

```
docker-compose -f docker-compose.yml up --build
```

### Local Development Environment

To fire up an instance of BMS with Angular hot reloading, you
can use the `docker-compose.dev.yml` file. Eventually it will
also support Spring hot reloading.

```
docker-compose -f docker-compose.dev.yml up --build
```
