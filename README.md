# mm-demo-app

## Purpose

Validate the performance in Azure compared with the main MM Rails application.

## Usage

The app has two routes:

`/` or `/hello`

This will return a simple template.

`/slow/:seconds`

This will cause the app to sleep for x number of seconds.

## Development

### Start

`docker compose up`

To rebuild the Docker container use `--build`

### Run command inside the container

`docker compose run --no-deps COMMAND`

e.g.

`docker compose run --no-deps web rails generate scaffold Product name:string description:text`
