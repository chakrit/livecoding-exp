# RUBY on RAILS

Run everything through the `shell.sh` script.

# GOTCHA

Always do your `bundle install` like this:

```sh
bundle install --path .bundle
```

This is because the container created by the `shell.sh` is destroy everytime the script
finishes so all the installed gems inside your container will be lost too. This command
works around the problem by installing gems locally alongside your source code instead.

# PORT

Port 8080 is mapped by default. Modify the `shell.sh` script to change port.
