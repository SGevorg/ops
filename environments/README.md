# Environments

### dev-start

Checks various basic installations and takes care of basic configurations

### Usage

Requires nothing. Run the script on newly provisioned vagrant box

```sh
$ ~/repos/ops/environments/dev-start.sh
```

For Apache Spark vagrant box, run the spark-env-config script to set correct environmental variables. It also will setup the emacs config (repos/.emacs.d)

```sh
$ /home/vagrant/ops/environments/spark-env-config.sh
```


### Todos

- Make the scripts more sophisticated
- Add more structure to the scripts over time

License
----

MIT
