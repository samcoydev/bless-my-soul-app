# Bless My Soul App

### Info About the Apps Purpose

Bless My Soul was created for a family member to use as the 
website for their local business. Bless My Soul sells various 
arts & crafts, such as custom watercolor cards, custom print 
tote bags, custom print shirts, and more! 

This website would be used to browse a catalog of products 
and add them to your cart, you will also be able to create 
orders and communicate with the owner to ensure you have the 
smoothest experience and receive any homemade craft fine tuned 
to your needs.

### Info About this Repository

This repository is home to a couple of docker compose files you 
can use to fire up an instance of Bless My Soul quickly. 

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
