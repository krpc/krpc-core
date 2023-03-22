load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

def krpc_core_workspace():
    http_file(
        name = 'csharp_krpc_io_ports',
        url = 'https://github.com/krpc/krpc-io-ports/releases/download/v1.0.0/KRPC.IO.Ports.dll',
        sha256 = '558b0c1649fbc44b518d9de8957fe30e7c9c42d73c62d63d165f6f136fab3ec5',
        downloaded_file_path = "KRPC.IO.Ports.dll"
    )

    http_archive(
        name = 'csharp_protobuf_unity',
        url = 'https://www.nuget.org/api/v2/package/Google.Protobuf/3.10.1',
        sha256 = '17eb7c37e702750d3aa53823571be7662a87a2111c6b2c844ba1c20641424084',
        type = 'zip',
        build_file_content = "exports_files(['lib/net45/Google.Protobuf.dll'])"
    )

    http_archive(
        name = 'csharp_ndesk_options',
        url = 'https://www.nuget.org/api/v2/package/NDesk.Options/0.2.1',
        sha256 = '0fa76d0ed1eb9fba757b0aa677903e1b8873735eec136a51dde24eda57d10c61',
        type = 'zip',
        build_file_content = "exports_files(['lib/NDesk.Options.dll'])"
    )
