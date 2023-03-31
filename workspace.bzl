" Workspace setup for dependent repositories "

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

def krpc_core_workspace():
    http_file(
        name = "csharp_krpc_io_ports",
        url = "https://github.com/krpc/krpc-io-ports/releases/download/v1.0.0/KRPC.IO.Ports.dll",
        sha256 = "558b0c1649fbc44b518d9de8957fe30e7c9c42d73c62d63d165f6f136fab3ec5",
        downloaded_file_path = "KRPC.IO.Ports.dll",
    )

    http_archive(
        name = "csharp_protobuf_unity",
        url = "https://www.nuget.org/api/v2/package/Google.Protobuf/3.10.1",
        sha256 = "17eb7c37e702750d3aa53823571be7662a87a2111c6b2c844ba1c20641424084",
        type = "zip",
        build_file_content = "exports_files(['lib/net45/Google.Protobuf.dll'])",
    )

    http_archive(
        name = "csharp_ndesk_options",
        url = "https://www.nuget.org/api/v2/package/NDesk.Options/0.2.1",
        sha256 = "0fa76d0ed1eb9fba757b0aa677903e1b8873735eec136a51dde24eda57d10c61",
        type = "zip",
        build_file_content = "exports_files(['lib/NDesk.Options.dll'])",
    )

def krpc_core_prebuilt_protoc():
    http_archive(
        name = "prebuilt_protoc_linux_unity",
        build_file_content = """
filegroup(
    name = "protoc",
    srcs = ["bin/protoc"],
    visibility = ["//visibility:public"],
)
""",
        sha256 = "0c97a75c8f8fafc55323599053626a0a822e5b66299f6643a2b086f859b56afd",
        urls = [
            "https://github.com/google/protobuf/releases/download/v3.10.1/protoc-3.10.1-linux-x86_64.zip",
        ],
    )

    http_archive(
        name = "prebuilt_protoc_osx_unity",
        build_file_content = """
filegroup(
    name = "protoc",
    srcs = ["bin/protoc"],
    visibility = ["//visibility:public"],
)
""",
        sha256 = "ee3f4051e55830596729efe48183218bdb44cf2f83b188460859bd63b2a09576",
        urls = [
            "https://github.com/google/protobuf/releases/download/v3.10.1/protoc-3.10.1-osx-x86_64.zip",
        ],
    )

    http_archive(
        name = "prebuilt_protoc_windows_unity",
        build_file_content = """
filegroup(
    name = "protoc",
    srcs = ["bin/protoc.exe"],
    visibility = ["//visibility:public"],
)
""",
        sha256 = "964f055db26372e46d8232a09fe6d661de3ca1b82fbbc1ede33696b1e379a11b",
        urls = [
            "https://github.com/google/protobuf/releases/download/v3.10.1/protoc-3.10.1-win32.zip",
        ],
    )

    http_archive(
        name = "prebuilt_protoc_linux",
        build_file_content = """
filegroup(
    name = "protoc",
    srcs = ["bin/protoc"],
    visibility = ["//visibility:public"],
)
""",
        sha256 = "3a4c1e5f2516c639d3079b1586e703fc7bcfa2136d58bda24d1d54f949c315e8",
        urls = [
            "https://github.com/google/protobuf/releases/download/v21.12/protoc-21.12-linux-x86_64.zip",
        ],
    )

    http_archive(
        name = "prebuilt_protoc_osx",
        build_file_content = """
filegroup(
    name = "protoc",
    srcs = ["bin/protoc"],
    visibility = ["//visibility:public"],
)
""",
        sha256 = "9448ff40278504a7ae5139bb70c962acc78c32d8fc54b4890a55c14c68b9d10a",
        urls = [
            "https://github.com/google/protobuf/releases/download/v21.12/protoc-21.12-osx-x86_64.zip",
        ],
    )

    http_archive(
        name = "prebuilt_protoc_windows",
        build_file_content = """
filegroup(
    name = "protoc",
    srcs = ["bin/protoc.exe"],
    visibility = ["//visibility:public"],
)
""",
        sha256 = "6de4ef4e65c7edb834a2a9fca6d85388adc5dd71fc8bff8b60569717d01dabea",
        urls = [
            "https://github.com/google/protobuf/releases/download/v21.12/protoc-21.12-win32.zip",
        ],
    )
