cc_binary(
    name = "echo_server",
    srcs = ["echo_server.cpp"],
    deps = [
        "@asio//:asio",
    ],
    defines = [
        "ASIO_HAS_CO_AWAIT",
        "ASIO_HAS_STD_COROUTINE",
    ],
    linkopts = ["-lpthread"],
)

