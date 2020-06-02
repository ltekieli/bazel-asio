# bazel-asio
Example for using C++ asio library from [think-async.com]() as a external repo
in bazel.

#### prerequisites
- [bazel](https://docs.bazel.build/versions/master/install.html) or [bazelisk](https://github.com/bazelbuild/bazelisk) installed
- gcc 10 for coroutine Example

#### usage
```
$ bazel build ...
$ bazel run //:echo_server
```
```
$ nc localhost 55555
```

#### explanation

- *.bazelrc* - contains default flags used for bazel commands
- *.bazelversion* - contains bazel version supported for this project, which is used by bazel to verify compatibility or by bazelisk to download proper version of bazel
- *third_party/asio.bzl* specifies how to download asio and which version to use
- *third_party/asio.BUILD* defines how to use asio in C++ context
