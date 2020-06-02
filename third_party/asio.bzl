load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")


def asio():
    if "asio" not in native.existing_rules():
        new_git_repository(
            name = "asio",
            commit = "62d0cf33a7b193ed76697662aa3ab51997ecde87",
            build_file = "//third_party:asio.BUILD",
            remote = "https://github.com/chriskohlhoff/asio.git",
            strip_prefix = "asio/include",
            shallow_since = "1572989526 +1100",
        )
