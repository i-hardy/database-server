# Database Server

A simple Sinatra server that runs on a specified port and can store and return parameters. Feature tested using [Postman](https://www.getpostman.com/).

## How to Use
```
$ git clone git@github.com:i-hardy/database-server.git
$ cd database-server
$ rackup
```
A post request made to /set?somekey=somevalue enables the parameters to be retrieved via a get request to /get.