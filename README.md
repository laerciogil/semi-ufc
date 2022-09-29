# semi-ufc
## psql-adventureworks

This project aims to create a stack with postgres rdbms, pgadmin and jupyterlab for studying, testing and prototyping hypothetical scenarios for analyzing and exploring data on the fictional Adventureworks OLTP database.

It uses docker and docker-compose to run containers with stack components. So this project should run three containers:
- postgres-adventureworks
- pgadmin-adventureworks
- jupyterlab

### Requirements
- docker
- docker-compose

### How to run

After cloning the repository, in the project directory, you must run the command below to run the containers.

```shell
docker-compose up -d
```

### Accessing database with pgadmin

With all containers running, pgadmin will be available on http://locahost:16543 . You must to use the login `adventureworks@gmail.com` and the password `adventureworks!`

On the left side of the screen, in the explore bar, right-click on "Servers" and navigate to "Register" and choose "Server". In the dialog box, on the "General" tab, enter an arbitrary name in the "Name" field, I suggest "postgres-adventureworks".
In the "Connection" tab you must enter the following fields:

- `Host name/address`: postgres-adventureworks
- `Username`: postgres
- `Password`: postgres!

### Accessing jupyterlab

To get the link to jupyterlab environment, you can check the logs of the container running the command:
```shell
docker logs jupyterlab
```
The end of the output of this command will look something like this:
```text
To access the server, open this file in a browser:
        file:///home/jovyan/.local/share/jupyter/runtime/jpserver-16-open.html
    Or copy and paste one of these URLs:
        http://741b10fce84f:8888/lab?token=6ae0349e2ae065d218a69a3e90094de23acdf26947518b75
     or http://127.0.0.1:8888/lab?token=6ae0349e2ae065d218a69a3e90094de23acdf26947518b75
```
Copy the last URL and paste it into your browser's address bar.