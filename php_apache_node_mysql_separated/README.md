# PHP - MySQL (MariaDB) - Node

Suitable environment php mvc application (Laravel, Symfony, others...).

PHP with, node, Mariadb are all setted in the same container.

The setup that can be found in the `Dockerfile` are the same appliable to a Deblian-like VM, so you may not stick to docker.

* Check `docker-compose.yml` to adjust the ports configurations to your needs.
* The public apache folder are setuped to use `public` (instead the default `html`) folder as server root. A more suitable setup for MVCs frameworks like Laravel and Symfony, which uses `public`. Check `./confifs/000-default.conf`.
* The database pass is phpass. Check in the `startup.sh` file to chenge it.
* After the database is initialized, check commented out line from volumes in `docker-compose.yml`. Good to copy those container folder to the local machine, so a need to restart does not purge the data from database.
