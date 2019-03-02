# docker-postgres-adminer
dokerize postgres and adminer

### Basic Usage
```sh
  $ git clone https://github.com/abas/docker-postgres-adminer.git dpa
  $ cd dpa

  # Building Image
  $ docker build -f Dockerfile -t $USER/postgres .

  # Running Container
  $ docker-compose up -d
```
then check http://localhost:8080
for connecting other container to DB, make the container to the same network and define configuration like bello

```php
Host    : postgres
User    : postgress
Pass    : your_password
Driver  : psql
```
if there any error of connection database, try to ping your, but first may you need to enter to your container.
```sh
  $ docker exec -ti your_container ping postgres
  
  # if there is no ping tool, install it
  $ docker exec -ti your_container apt-get update && apt-get install -y iputils-ping

  # then try command above
  $ docker exec -ti your_container ping postgres
```

> Note

- you can custom the name of container `postgres` to what you want in `docker-compose.yml` :>

- <#kankuu:> dont be hesitate to make `pull-request` or **issue** :>
