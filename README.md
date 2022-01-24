Dockerfile Here-Docs
====================
This is my playing with the feature described [here][1] using [this][2].

Instead of
```Dockerfile
run foo \
 && bar \
 && baz
```

you can now do
```Dockerfile
# syntax=docker/dockerfile:1.3-labs

...

run <<END_SCRIPT
set -e
foo
bar
baz
END_SCRIPT
```

The ugly parts are:

1. You have to use a new flavor of the `docker build` command.
2. Your `Dockerfile` has to have the magical syntax version comment at the top.

See the [build][3] script.

[1]: https://www.docker.com/blog/introduction-to-heredocs-in-dockerfiles/
[2]: https://docs.docker.com/develop/develop-images/build_enhancements/
[3]: build

