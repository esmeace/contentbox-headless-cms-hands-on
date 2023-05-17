# Installing ContentBox

If you successfully installed Docker, copy our `docker-compose.yml` file into the `Headless ContentBox` dir.  CD into into the directory `Headless ContentBox`.

```
cd Headless ContentBox
```
## contentbox install-wizard
Let's begin the ContenBox install using the install-wizard.

```
contentbox install-wizard
```
You will be prompted with the following:

1. What is the name of the site you want to create?  cbheadless
2. What CFML engine will the site run on? Select Lucee 5
3. Enter the password for the CFML Engine administrator (Leave empty to use 'contentbox', only if deployed on CommandBox)? (leave blank)
4. Enter the password for the ColdBox HMVC Reinits (Leave empty to use 'contentbox')? ( leave blank )
5. What Database will you be using? Select MySQL 8 +
6. Enter the database host (Leave empty to use 'localhost') ? mysql ( if using Docker )
7. Enter the database port (Leave empty to use the default for MySQL8) ? ( leave blank )
8. Enter the database username to use for the connection? root
9. Enter the database password to use for the connection? cbheadless ( if using Docker )
10. Enter the database name to use for the connection (Leave empty to use 'contentbox') ? cbheadless
11. Do you want us to deploy and start a CFML Engine (lucee@5) on CommandBox for you? Select False ( if using Docker )
12. Is this a development or production site? Select Development
13. Enter the ContentBox version to use or leave empty to use the latest stable version (be = snapshot)? ( leave empty )
14. Do you wish to continue? [y/n] y

Note:  There will be errors in the console but that is because the database has not been created.
## CORS
Add the CORS module, which detects CORS requests, validates them against the configured origins, and handles preflight requests.

```
install cors
```
## Exit CommandBox

```
exit
```
## docker-compose
Let's build our MySQL and App containers.

```
docker-compose up -d --build
```
## Database 
Using your MySQL DB Client start a new connection.

1. host: 127.0.0.1
2. port: 3357
3. username: sa ( root if sa fails )
4. password: cbheadless

Once the connections is stablished, create a new database.
1. name: cbheadless
2. character set: utf8mb4

## ContentBox Installer UI
In your browser go to `http://127.0.0.1:61680/`.  You should see the ContentBox Installer.

## Once installed, you can move onto the next step