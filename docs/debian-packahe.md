# Creating a Debian package

1. Install necessary tools:
```shell
$ sudo apt-get install build-essential devscripts debhelper dh-make
```

2. Create Debian package structure
```shell
$ dh_make --native --indep --copyright GPL --packagename datasync -p datasync_0.0.1
```


