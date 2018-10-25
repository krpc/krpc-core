workspace(name = "krpc")

new_http_archive(
    name = 'protoc_linux_x86_32',
    build_file_content = "exports_files(['bin/protoc'])",
    url = 'https://github.com/protocolbuffers/protobuf/releases/download/v3.6.1/protoc-3.6.1-linux-x86_32.zip',
    sha256 = 'f4d9235c1ecf2c520ff3d3ebec44457810023fc3093181f76c06871d2e47f413'
)

new_http_archive(
    name = 'protoc_linux_x86_64',
    build_file_content = "exports_files(['bin/protoc'])",
    url = 'https://github.com/protocolbuffers/protobuf/releases/download/v3.6.1/protoc-3.6.1-linux-x86_64.zip',
    sha256 = '6003de742ea3fcf703cfec1cd4a3380fd143081a2eb0e559065563496af27807'
)

new_http_archive(
    name = 'protoc_osx_x86_32',
    build_file_content = "exports_files(['bin/protoc'])",
    url = 'https://github.com/protocolbuffers/protobuf/releases/download/v3.6.1/protoc-3.6.1-osx-x86_32.zip',
    sha256 = '95aef29c7780130e6b84ea6037ee8ff146ae35d05962ee76f949f7ccb8116b8b'
)

new_http_archive(
    name = 'protoc_win32',
    build_file_content = "exports_files(['bin/protoc.exe'])",
    url = 'https://github.com/protocolbuffers/protobuf/releases/download/v3.6.1/protoc-3.6.1-win32.zip',
    sha256 = '65e5d6f890e8df5b6b411e3fdbad04c33b2bd34a3576f343a8986589bd8d05e2'
)

new_http_archive(
    name = 'protoc_nanopb',
    build_file_content = """
filegroup(
    name = 'plugin',
    srcs = ['generator'],
    visibility = ['//visibility:public']
)
""",
    url = 'https://jpa.kapsi.fi/nanopb/download/nanopb-0.3.9.1-linux-x86.tar.gz',
    sha256 = 'ee18b12ea11376e6b6d89a2cab4592fb1fbaeff3252f180608c9a7632594a12e',
    strip_prefix = 'nanopb-0.3.9.1-linux-x86'
)

new_http_archive(
    name = 'c_nanopb',
    build_file_content = """
exports_files([
    'LICENSE.txt', 'pb.h', 'pb_common.h', 'pb_common.c', 'pb_encode.h', 'pb_encode.c', 'pb_decode.h', 'pb_decode.c'
])

cc_library(
    name = 'nanopb',
    srcs = ['pb.h', 'pb_common.h', 'pb_common.c', 'pb_encode.h', 'pb_encode.c', 'pb_decode.h', 'pb_decode.c'],
    hdrs = ['pb.h', 'pb_common.h', 'pb_encode.h', 'pb_decode.h'],
    includes = ['./'],
    include_prefix = 'krpc_cnano', # FIXME: don't do this here
    visibility = ['//visibility:public']
)

filegroup(
    name = 'srcs',
    srcs = glob(['*.h', '*.c']),
    visibility = ['//visibility:public']
)
""",
    url = 'https://jpa.kapsi.fi/nanopb/download/nanopb-0.3.9.1-linux-x86.tar.gz',
    sha256 = 'ee18b12ea11376e6b6d89a2cab4592fb1fbaeff3252f180608c9a7632594a12e',
    strip_prefix = 'nanopb-0.3.9.1-linux-x86'
)

http_file(
    name = 'csharp_nuget',
    url = 'https://dist.nuget.org/win-x86-commandline/v4.7.1/nuget.exe',
    sha256 = '82e3aa0205415cd18d8ae34613911717dad3ed4e8ac58143e55ca432a5bf3c0a'
)

new_http_archive(
    name = 'csharp_protobuf',
    build_file_content = "exports_files(['lib/net45/Google.Protobuf.dll'])",
    url = 'https://www.nuget.org/api/v2/package/Google.Protobuf/3.6.1',
    type = 'zip',
    sha256 = 'bfa7666aa55e60aa2ee65502966336f812702acaaf7c62d12f276a01ab3aa9a4'
)

http_file(
    name = 'csharp_protobuf_net35',
    url = 'https://s3.amazonaws.com/krpc/lib/protobuf-3.6.1-net35/Google.Protobuf.dll',
    sha256 = 'd6c437bfbee9a2534744c5bae3ab6359caf0382ff61ea402f334fd6c3edf9f89'
)

http_file(
    name = 'csharp_krpc_io_ports',
    url = 'https://github.com/krpc/krpc-io-ports/releases/download/v1.0.0/KRPC.IO.Ports.dll',
    sha256 = '558b0c1649fbc44b518d9de8957fe30e7c9c42d73c62d63d165f6f136fab3ec5'
)

http_file(
    name = 'csharp_krpc_io_ports_license',
    url = 'https://raw.githubusercontent.com/krpc/krpc-io-ports/master/LICENSE',
    sha256 = 'a6b8912947cb14e02cefb704859d12a03d3c8792344fcf5831ef27c1efcd6d20'
)

new_http_archive(
    name = 'csharp_nunit',
    build_file_content = """
filegroup(
    name = 'nunit_exe',
    srcs = ['bin/nunit-console.exe'],
    visibility = ['//visibility:public'],
)

filegroup(
    name = 'nunit_exe_libs',
    srcs = glob(['bin/lib/*.dll']),
    visibility = ['//visibility:public'],
)

filegroup(
    name = 'nunit_framework',
    srcs = glob(['bin/framework/*.dll']),
    visibility = ['//visibility:public'],
)
""",
    url = 'https://github.com/nunit/nunitv2/releases/download/2.6.4/NUnit-2.6.4.zip',
    sha256 = '1bd925514f31e7729ccde40a38a512c2accd86895f93465f3dfe6d0b593d7170',
    strip_prefix = 'NUnit-2.6.4'
)

new_http_archive(
    name = 'csharp_moq',
    build_file_content = "exports_files(['lib/net40/Moq.dll'])",
    url = 'http://www.nuget.org/api/v2/package/Moq/4.2.1510.2205',
    type = 'zip',
    sha256 = '7a86f2ed0e134601e75a4fa28c7f7c399f6abc33f091dbc024ad8b212b8c3c85'
)

new_http_archive(
    name = 'csharp_json',
    build_file_content = "exports_files(['lib/net35/Newtonsoft.Json.dll', 'lib/net45/Newtonsoft.Json.dll'])",
    url = 'https://www.nuget.org/api/v2/package/Newtonsoft.Json/9.0.1',
    type = 'zip',
    sha256 = '998081ae052120917346e2cb57d488888147a2fcdf47c52ea9f83a7b4f049e55'
)

new_http_archive(
    name = 'csharp_options',
    build_file_content = "exports_files(['lib/NDesk.Options.dll'])",
    url = 'https://www.nuget.org/api/v2/package/NDesk.Options/0.2.1',
    type = 'zip',
    sha256 = 'f7cad7f76b9a738930496310ea47888529fbfd0a39896bdfd3cfd17fd385f53b'
)

http_archive(
    name = 'com_google_protobuf',
    url = 'https://github.com/google/protobuf/releases/download/v3.6.1/protobuf-cpp-3.6.1.tar.gz',
    strip_prefix = 'protobuf-3.6.1',
    sha256 = 'b3732e471a9bb7950f090fd0457ebd2536a9ba0891b7f3785919c654fe2a2529'
)

new_http_archive(
    name = 'cpp_asio',
    build_file_content = """
cc_library(
    name = 'asio',
    hdrs = glob(['include/*', 'include/**/*']),
    includes = ['include'],
    visibility = ['//visibility:public']
)
""",
    url = 'https://s3.amazonaws.com/krpc/lib/asio/asio-1.12.1.tar.gz',
    strip_prefix = 'asio-1.12.1',
    sha256 = '636269fe2d98df2155c2ddf509eaa00f775b560452a36d6b45c883c2555f6456'
)

new_http_archive(
    name = 'cpp_googletest',
    build_file_content = """
cc_library(
    name = 'gtest',
    srcs = glob(['googletest/src/*.cc'], exclude = ['googletest/src/gtest-all.cc']),
    hdrs = glob(['**/*.h', 'googletest/src/*.cc']),
    includes = [
        './',
        'googletest',
        'googletest/include',
        'include'
    ],
    linkopts = ['-pthread'],
    visibility = ['//visibility:public'],
)

cc_library(
    name = 'gmock',
    srcs = glob(['googlemock/src/*.cc'], exclude = ['googlemock/src/gmock-all.cc']),
    hdrs = glob(['**/*.h', 'googlemock/src/*.cc']),
    includes = [
        './',
        'googlemock',
        'googlemock/include',
        'include'
    ],
    deps = [':gtest'],
    linkopts = ['-pthread'],
    visibility = ['//visibility:public'],
)
""",
    url = 'https://github.com/google/googletest/archive/release-1.8.1.zip',
    strip_prefix = 'googletest-release-1.8.1',
    sha256 = '927827c183d01734cc5cfef85e0ff3f5a92ffe6188e0d18e909c5efebf28a0c7'
)

http_file(
    name = 'm4_stdcxx',
    url = 'http://git.savannah.gnu.org/gitweb/?p=autoconf-archive.git;a=blob_plain;f=m4/ax_cxx_compile_stdcxx.m4;hb=34104ea9e635fae5551fd1d6495a80f8041c4adc',
    sha256 = 'a6f7cdef49579d995976baece6e605aca1f2c8b0cb771bbae4d7b816710dcb4c'
)

http_file(
    name = 'm4_stdcxx_11',
    url = 'http://git.savannah.gnu.org/gitweb/?p=autoconf-archive.git;a=blob_plain;f=m4/ax_cxx_compile_stdcxx_11.m4;hb=34104ea9e635fae5551fd1d6495a80f8041c4adc',
    sha256 = '98a0053e6b3fda3243cca0a40e7d7b496cb05ce4716cf6f1663e86c8ad36f1e8'
)

maven_jar(
    name = 'java_protobuf',
    artifact = 'com.google.protobuf:protobuf-java:3.6.1',
    sha1 = '0d06d46ecfd92ec6d0f3b423b4cd81cb38d8b924'
)

maven_jar(
    name = 'java_junit',
    artifact = 'junit:junit:4.12',
    sha1 = '2973d150c0dc1fefe998f834810d68f278ea58ec'
)

maven_jar(
    name = 'java_hamcrest',
    artifact = 'org.hamcrest:hamcrest-core:1.3',
    sha1 = '42a25dc3219429f0e5d060061f71acb49bf010a0'
)

maven_jar(
    name = 'java_checkstyle',
    artifact = 'com.puppycrawl.tools:checkstyle:7.1.2',
    sha1 = 'a140779aa6cf2dbe25187ad22b28e14e57e77f14'
)

maven_jar(
    name = 'java_apache_commons_beanutils',
    artifact = 'commons-beanutils:commons-beanutils:1.9.3',
    sha1 = 'c845703de334ddc6b4b3cd26835458cb1cba1f3d'
)

maven_jar(
    name = 'java_apache_commons_cli',
    artifact = 'commons-cli:commons-cli:1.3.1',
    sha1 = '1303efbc4b181e5a58bf2e967dc156a3132b97c0'
)

maven_jar(
    name = 'java_apache_commons_collections',
    artifact = 'commons-collections:commons-collections:3.2.2',
    sha1 = '8ad72fe39fa8c91eaaf12aadb21e0c3661fe26d5'
)

maven_jar(
    name = 'java_apache_commons_logging',
    artifact = 'commons-logging:commons-logging:1.2',
    sha1 = '4bfc12adfe4842bf07b657f0369c4cb522955686'
)

maven_jar(
    name = 'java_antlr2',
    artifact = 'antlr:antlr:2.7.7',
    sha1 = '83cd2cd674a217ade95a4bb83a8a14f351f48bd0'
)

maven_jar(
    name = 'java_antlr4_runtime',
    artifact = 'org.antlr:antlr4-runtime:4.5.3',
    sha1 = '2609e36f18f7e8d593cc1cddfb2ac776dc96b8e0'
)

maven_jar(
    name = 'java_guava',
    artifact = 'com.google.guava:guava:19.0',
    sha1 = '6ce200f6b23222af3d8abb6b6459e6c44f4bb0e9'
)

maven_jar(
    name = 'java_javatuples',
    artifact = 'org.javatuples:javatuples:1.2',
    sha1 = '507312ac4b601204a72a83380badbca82683dd36'
)

new_http_archive(
    name = 'protoc_lua',
    build_file_content = """
filegroup(
    name = 'plugin',
    srcs = [
        'protoc-plugin/protoc-gen-lua',
        'protoc-plugin/plugin_pb2.py'
    ],
    visibility = ['//visibility:public']
)""",
    url = 'https://github.com/djungelorm/protobuf-lua/archive/v1.1.1.tar.gz',
    sha256 = 'bccdd9c65970c42fd29b87084db83777cad75780a67c5107b68f96603b5788a8',
    strip_prefix = 'protobuf-lua-1.1.1'
)

http_file(
    name = 'lua_protobuf',
    url = 'https://github.com/djungelorm/protobuf-lua/releases/download/v1.1.1/protobuf-1.1.1-0.src.rock',
    sha256 = 'eec6a738cd6acbf0ae695c95bac6f89036cd37f23335272cb3717b01834f1dbb'
)

http_file(
    name = 'lua_luasocket',
    url = 'https://luarocks.org/manifests/luarocks/luasocket-3.0rc1-2.src.rock',
    sha256 = '3882f2a1e1c6145ceb43ead385b861b97fa2f8d487e8669ec5b747406ab251c7'
)

http_file(
    name = 'lua_luafilesystem',
    url = 'https://luarocks.org/manifests/hisham/luafilesystem-1.6.3-2.src.rock',
    sha256 = '872914421d4585f37ce72be40003e2bfdd22e017b55e87b0f89c467cc0df30e0'
)

http_file(
    name = 'lua_penlight',
    url = 'http://luarocks.org/repositories/rocks/penlight-1.3.1-1.src.rock',
    sha256 = '13c6fcc5058a998505ddc4b52496f591d7d37ed2efa9a46a2c39db6183f38783'
)

http_file(
    name = 'lua_luaunit',
    url = 'https://luarocks.org/manifests/bluebird75/luaunit-3.2.1-1.src.rock',
    sha256 = '7ae20f3b68e77e3be52fc95c147eccfaef33206a7985320061fb9352d8565741'
)

http_file(
    name = 'python_alabaster',
    url = 'https://files.pythonhosted.org/packages/cc/b4/ed8dcb0d67d5cfb7f83c4d5463a7614cb1d078ad7ae890c9143edebbf072/alabaster-0.7.12.tar.gz',
    sha256 = 'a661d72d58e6ea8a57f7a86e37d86716863ee5e92788398526d58b26a4e4dc02'
)

http_file(
    name = 'python_astroid',
    url = 'https://files.pythonhosted.org/packages/04/58/2dc2c7769c37eac4665870a8e925334837bfe9b23599d28f3767a72e593a/astroid-1.6.5.tar.gz',
    sha256 = 'fc9b582dba0366e63540982c3944a9230cbc6f303641c51483fa547dcc22393a'
)

http_file(
    name = 'python_babel',
    url = 'https://files.pythonhosted.org/packages/be/cc/9c981b249a455fa0c76338966325fc70b7265521bad641bf2932f77712f4/Babel-2.6.0.tar.gz',
    sha256 = '8cba50f48c529ca3fa18cf81fa9403be176d374ac4d60738b839122dfaaa3d23'
)

http_file(
    name = 'python_backports_functools_lru_cache',
    url = 'https://files.pythonhosted.org/packages/57/d4/156eb5fbb08d2e85ab0a632e2bebdad355798dece07d4752f66a8d02d1ea/backports.functools_lru_cache-1.5.tar.gz',
    sha256 = '9d98697f088eb1b0fa451391f91afb5e3ebde16bbdb272819fd091151fda4f1a'
)

http_file(
    name = 'python_beautifulsoup4',
    url = 'https://files.pythonhosted.org/packages/88/df/86bffad6309f74f3ff85ea69344a078fc30003270c8df6894fca7a3c72ff/beautifulsoup4-4.6.3.tar.gz',
    sha256 = '90f8e61121d6ae58362ce3bed8cd997efb00c914eae0ff3d363c32f9a9822d10'
)

http_file(
    name = 'python_certifi',
    url = 'https://files.pythonhosted.org/packages/e1/0f/f8d5e939184547b3bdc6128551b831a62832713aa98c2ccdf8c47ecc7f17/certifi-2018.8.24.tar.gz',
    sha256 = '376690d6f16d32f9d1fe8932551d80b23e9d393a8578c5633a2ed39a64861638'
)

http_file(
    name = 'python_chardet',
    url = 'https://files.pythonhosted.org/packages/fc/bb/a5768c230f9ddb03acc9ef3f0d4a3cf93462473795d18e9535498c8f929d/chardet-3.0.4.tar.gz',
    sha256 = '84ab92ed1c4d4f16916e05906b6b75a6c0fb5db821cc65e70cbd64a3e2a5eaae'
)

http_file(
    name = 'python_configparser',
    url = 'https://files.pythonhosted.org/packages/61/a7/48f627413200d5dfd0a5da8b494d34ccac03f8a87a6b2d765b7d81e175e3/configparser-3.5.0b2.tar.gz',
    sha256 = '16810160ff28233efac6c1dc0eea8d4c9b87042f9210541dab4f92a90a7d8597'
)

http_file(
    name = 'python_cpplint',
    url = 'https://files.pythonhosted.org/packages/95/42/27a16ef7fc609aba82bec923e2d29a1fa163bc95a267eaf1acc780e949fc/cpplint-1.3.0.tar.gz',
    sha256 = '6876139c3944c6dc84cc9095b6c4be3c5397b534b0c00230ba59c4b893936719'
)

http_file(
    name = 'python_docutils',
    url = 'https://files.pythonhosted.org/packages/6b/57/6e68a5457ea9579f970d7854c090a6c991c8ab481df12e6be25ff505a4b0/docutils-0.14rc2.tar.gz',
    sha256 = '3caee0bcb2a49fdf24fcfa70849a60abb7a181aa68b030f7cb7494096181830c'
)

http_file(
    name = 'python_enum34',
    url = 'https://files.pythonhosted.org/packages/bf/3e/31d502c25302814a7c2f1d3959d2a3b3f78e509002ba91aea64993936876/enum34-1.1.6.tar.gz',
    sha256 = '8ad8c4783bf61ded74527bffb48ed9b54166685e4230386a9ed9b1279e2df5b1'
)

http_file(
    name = 'python_future',
    url = 'https://files.pythonhosted.org/packages/00/2b/8d082ddfed935f3608cc61140df6dcbf0edea1bc3ab52fb6c29ae3e81e85/future-0.16.0.tar.gz',
    sha256 = 'e39ced1ab767b5936646cedba8bcce582398233d6a627067d4c6a454c90cfedb'
)

http_file(
    name = 'python_futures',
    url = 'https://files.pythonhosted.org/packages/1f/9e/7b2ff7e965fc654592269f2906ade1c7d705f1bf25b7d469fa153f7d19eb/futures-3.2.0.tar.gz',
    sha256 = '9ec02aa7d674acb8618afb127e27fde7fc68994c0437ad759fa094a574adb265'
)

http_file(
    name = 'python_idna',
    url = 'https://files.pythonhosted.org/packages/65/c4/80f97e9c9628f3cac9b98bfca0402ede54e0563b56482e3e6e45c43c4935/idna-2.7.tar.gz',
    sha256 = '684a38a6f903c1d71d6d5fac066b58d7768af4de2b832e426ec79c30daa94a16'
)

http_file(
    name = 'python_imagesize',
    url = 'https://files.pythonhosted.org/packages/41/f5/3cf63735d54aa9974e544aa25858d8f9670ac5b4da51020bbfc6aaade741/imagesize-1.1.0.tar.gz',
    sha256 = 'f3832918bc3c66617f92e35f5d70729187676313caa60c187eb0f28b8fe5e3b5'
)

http_file(
    name = 'python_isort',
    url = 'https://files.pythonhosted.org/packages/b1/de/a628d16fdba0d38cafb3d7e34d4830f2c9cb3881384ce5c08c44762e1846/isort-4.3.4.tar.gz',
    sha256 = 'b9c40e9750f3d77e6e4d441d8b0266cf555e7cdabdcff33c4fd06366ca761ef8'
)

http_file(
    name = 'python_javalang',
    url = 'https://files.pythonhosted.org/packages/39/51/fc4d3cdcf8f46509887d8771ce18ca6cfafd1d02eb429d69da95866a0b5e/javalang-0.11.0.tar.gz',
    sha256 = '3fcab8c0d4a1c51512bc7de1f4aaf9de8fb582833746b572478da6c0ac318a0b'
)

http_file(
    name = 'python_javasphinx',
    url = 'https://files.pythonhosted.org/packages/34/ea/08bc47c6aafcf5ebf06784c0ec60aa0e8bd130bc96f923755f061471a3c8/javasphinx-0.9.15.tar.gz',
    sha256 = '165f787172a99ceaedd0230a69b44de19cebd3a103e970b89bf667210ae6b65b'
)

http_file(
    name = 'python_jinja2',
    url = 'https://files.pythonhosted.org/packages/56/e6/332789f295cf22308386cf5bbd1f4e00ed11484299c5d7383378cf48ba47/Jinja2-2.10.tar.gz',
    sha256 = 'f84be1bb0040caca4cea721fcbbbbd61f9be9464ca236387158b0feea01914a4'
)

http_file(
    name = 'python_lazy_object_proxy',
    url = 'https://files.pythonhosted.org/packages/55/08/23c0753599bdec1aec273e322f277c4e875150325f565017f6280549f554/lazy-object-proxy-1.3.1.tar.gz',
    sha256 = 'eb91be369f945f10d3a49f5f9be8b3d0b93a4c2be8f8a5b83b0571b8123e0a7a'
)

http_file(
    name = 'python_lxml',
    url = 'https://files.pythonhosted.org/packages/4b/20/ddf5eb3bd5c57582d2b4652b4bbcf8da301bdfe5d805cb94e805f4d7464d/lxml-4.2.5.tar.gz',
    sha256 = '36720698c29e7a9626a0dc802ef8885f8f0239bfd1689628ecd459a061f2807f'
)

http_file(
    name = 'python_markupsafe',
    url = 'https://files.pythonhosted.org/packages/4d/de/32d741db316d8fdb7680822dd37001ef7a448255de9699ab4bfcbdf4172b/MarkupSafe-1.0.tar.gz',
    sha256 = 'a6be69091dac236ea9c6bc7d012beab42010fa914c459791d627dad4910eb665'
)

http_file(
    name = 'python_mccabe',
    url = 'https://files.pythonhosted.org/packages/06/18/fa675aa501e11d6d6ca0ae73a101b2f3571a565e0f7d38e062eec18a91ee/mccabe-0.6.1.tar.gz',
    sha256 = 'dd8d182285a0fe56bace7f45b5e7d1a6ebcbf524e8f3bd87eb0f125271b8831f'
)

http_file(
    name = 'python_packaging',
    url = 'https://files.pythonhosted.org/packages/cf/50/1f10d2626df0aa97ce6b62cf6ebe14f605f4e101234f7748b8da4138a8ed/packaging-18.0.tar.gz',
    sha256 = '0886227f54515e592aaa2e5a553332c73962917f2831f1b0f9b9f4380a4b9807'
)

http_file(
    name = 'python_pyparsing',
    url = 'https://files.pythonhosted.org/packages/1a/e2/4a7ad8f2808e03caebd3ec0a250b4afbb26d4ba063c39c3286185dd06dd1/pyparsing-2.2.2.tar.gz',
    sha256 = 'bc6c7146b91af3f567cf6daeaec360bc07d45ffec4cf5353f4d7a208ce7ca30a'
)

http_file(
    name = 'python_pbr',
    url = 'https://files.pythonhosted.org/packages/4c/22/91722b7d842a9e2e6ae41346f691fea95d9ac08678de7ac51c38754f9961/pbr-4.3.0.tar.gz',
    sha256 = '1be135151a0da949af8c5d0ee9013d9eafada71237eb80b3ba8896b4f12ec5dc'
)

http_file(
    name = 'python_pep8',
    url = 'https://files.pythonhosted.org/packages/01/a0/64ba19519db49e4094d82599412a9660dee8c26a7addbbb1bf17927ceefe/pep8-1.7.1.tar.gz',
    sha256 = 'fe249b52e20498e59e0b5c5256aa52ee99fc295b26ec9eaa85776ffdb9fe6374'
)

http_file(
    name = 'python_protobuf',
    url = 'https://files.pythonhosted.org/packages/1b/90/f531329e628ff34aee79b0b9523196eb7b5b6b398f112bb0c03b24ab1973/protobuf-3.6.1.tar.gz',
    sha256 = '1489b376b0f364bcc6f89519718c057eb191d7ad6f1b395ffd93d1aa45587811'
)

http_file(
    name = 'python_pyenchant',
    url = 'https://files.pythonhosted.org/packages/9e/54/04d88a59efa33fefb88133ceb638cdf754319030c28aadc5a379d82140ed/pyenchant-2.0.0.tar.gz',
    sha256 = 'fc31cda72ace001da8fe5d42f11c26e514a91fa8c70468739216ddd8de64e2a0'
)

http_file(
    name = 'python_pygments',
    url = 'https://files.pythonhosted.org/packages/71/2a/2e4e77803a8bd6408a2903340ac498cb0a2181811af7c9ec92cb70b0308a/Pygments-2.2.0.tar.gz',
    sha256 = 'dbae1046def0efb574852fab9e90209b23f556367b5a320c0bcb871c77c3e8cc'
)

http_file(
    name = 'python_pylint',
    url = 'https://files.pythonhosted.org/packages/96/d3/dd70fe131595547120ddc24931f813e2d55999dfae3f18d0d2bba7b90139/pylint-1.9.3.tar.gz',
    sha256 = '09bc539f85706f2cca720a7ddf28f5c6cf8185708d6cb5bbf7a90a32c3b3b0aa'
)

http_file(
    name = 'python_pytz',
    url = 'https://files.pythonhosted.org/packages/60/88/d3152c234da4b2a1f7a989f89609ea488225eaea015bc16fbde2b3fdfefa/pytz-2017.3.zip',
    sha256 = 'fae4cffc040921b8a2d60c6cf0b5d662c1190fe54d718271db4eb17d44a185b7'
)

http_file(
    name = 'python_requests',
    url = 'https://files.pythonhosted.org/packages/54/1f/782a5734931ddf2e1494e4cd615a51ff98e1879cbe9eecbdfeaf09aa75e9/requests-2.19.1.tar.gz',
    sha256 = 'ec22d826a36ed72a7358ff3fe56cbd4ba69dd7a6718ffd450ff0e9df7a47ce6a'
)

http_file(
    name = 'python_serialio',
    url = 'https://files.pythonhosted.org/packages/cc/74/11b04703ec416717b247d789103277269d567db575d2fd88f25d9767fe3d/pyserial-3.4.tar.gz',
    sha256 = '6e2d401fdee0eab996cf734e67773a0143b932772ca8b42451440cfed942c627'
)

http_file(
    name = 'python_setuptools',
    url = 'https://files.pythonhosted.org/packages/6e/9c/6a003320b00ef237f94aa74e4ad66c57a7618f6c79d67527136e2544b728/setuptools-40.4.3.zip',
    sha256 = 'acbc5740dd63f243f46c2b4b8e2c7fd92259c2ddb55a4115b16418a2ed371b15'
)

http_file(
    name = 'python_setuptools_git',
    url = 'https://files.pythonhosted.org/packages/d9/c5/396c2c06cc89d4ce2d8ccf1d7e6cf31b33d4466a7c65a67a992adb3c6f29/setuptools-git-1.2.tar.gz',
    sha256 = 'ff64136da01aabba76ae88b050e7197918d8b2139ccbf6144e14d472b9c40445'
)

http_file(
    name = 'python_singledispatch',
    url = 'https://files.pythonhosted.org/packages/d9/e9/513ad8dc17210db12cb14f2d4d190d618fb87dd38814203ea71c87ba5b68/singledispatch-3.4.0.3.tar.gz',
    sha256 = '5b06af87df13818d14f08a028e42f566640aef80805c3b50c5056b086e3c2b9c'
)

http_file(
    name = 'python_six',
    url = 'https://files.pythonhosted.org/packages/16/d8/bc6316cf98419719bd59c91742194c111b6f2e85abac88e496adefaf7afe/six-1.11.0.tar.gz',
    sha256 = '70e8a77beed4562e7f14fe23a786b54f6296e34344c23bc42f07b15018ff98e9'
)

http_file(
    name = 'python_snowballstemmer',
    url = 'https://files.pythonhosted.org/packages/20/6b/d2a7cb176d4d664d94a6debf52cd8dbae1f7203c8e42426daa077051d59c/snowballstemmer-1.2.1.tar.gz',
    sha256 = '919f26a68b2c17a7634da993d91339e288964f93c274f1343e3bbbe2096e1128'
)

http_file(
    name = 'python_sphinx',
    url = 'https://files.pythonhosted.org/packages/c7/e9/b1bed881847680cecc70159b8b9d5fd1cd4e85627c534712c2c7b339f8b6/Sphinx-1.8.1.tar.gz',
    sha256 = '652eb8c566f18823a022bb4b6dbc868d366df332a11a0226b5bc3a798a479f17'
)

http_file(
    name = 'python_sphinx_csharp',
    url = 'https://files.pythonhosted.org/packages/16/6c/e585372b8ab807b697044eeaf4117bcd0c55087559772e75abd041d4466f/sphinx-csharp-0.1.6.tar.gz',
    sha256 = '4a6a019c6bc12e246e9ff065114b3df47fe3692a9536b014e4530f47a7645ab5'
)

http_file(
    name = 'python_sphinx_lua',
    url = 'https://github.com/djungelorm/sphinx-lua/releases/download/0.1.4/sphinx-lua-0.1.4.tar.gz',
    sha256 = 'ebfd6a228fe99f2349d07c9cb0a6f411132b1726ad203238feaa44c67b2aad95'
)

http_file(
    name = 'python_sphinx_tabs',
    url = 'https://files.pythonhosted.org/packages/f6/27/b858d292315beab1930387d8e4eb53ebfa31b46975d974574634fb773dc4/sphinx-tabs-1.1.7.tar.gz',
    sha256 = 'a2702405f77e0a8207468b349f516d1677dda0af9c9fb042d46421d196ab9fc5'
)

http_file(
    name = 'python_sphinx_rtd_theme',
    url = 'https://files.pythonhosted.org/packages/db/37/f57c7a99827aa03fa8efc24037ff9990deb1c6a7bb2f23c388bd36b8748a/sphinx_rtd_theme-0.4.2.tar.gz',
    sha256 = '02f02a676d6baabb758a20c7a479d58648e0f64f13e07d1b388e9bb2afe86a09'
)

http_file(
    name = 'python_sphinxcontrib_spelling',
    url = 'https://files.pythonhosted.org/packages/74/22/3fc121b8a7acd4952e0a280ced4703ed0082ae61533204731ef4cdfa01cb/sphinxcontrib-spelling-4.2.0.tar.gz',
    sha256 = '44a9445b237ade895ae1fccbe6f41422489b1ffb2a026c1b78b0c1c1c229f9bf'
)

http_file(
    name = 'python_sphinxcontrib_websupport',
    url = 'https://files.pythonhosted.org/packages/07/7a/e74b06dce85555ffee33e1d6b7381314169ebf7e31b62c18fcb2815626b7/sphinxcontrib-websupport-1.1.0.tar.gz',
    sha256 = '9de47f375baf1ea07cdb3436ff39d7a9c76042c10a769c52353ec46e4e8fc3b9'
)

http_file(
    name = 'python_typing',
    url = 'https://files.pythonhosted.org/packages/bf/9b/2bf84e841575b633d8d91ad923e198a415e3901f228715524689495b4317/typing-3.6.6.tar.gz',
    sha256 = '4027c5f6127a6267a435201981ba156de91ad0d1d98e9ddc2aa173453453492d'
)

http_file(
    name = 'python_urllib3',
    url = 'https://files.pythonhosted.org/packages/3c/d2/dc5471622bd200db1cd9319e02e71bc655e9ea27b8e0ce65fc69de0dac15/urllib3-1.23.tar.gz',
    sha256 = 'a68ac5e15e76e7e5dd2b8f94007233e01effe3e50e8daddf69acfd81cb686baf'
)

http_file(
    name = 'python_wrapt',
    url = 'https://files.pythonhosted.org/packages/a0/47/66897906448185fcb77fc3c2b1bc20ed0ecca81a0f2f88eda3fc5a34fc3d/wrapt-1.10.11.tar.gz',
    sha256 = 'd4d560d479f2c21e1b5443bbd15fe7ec4b37fe7e53d335d3b9b0a7b1226fe3c6'
)

http_file(
    name = 'python_websocket_client',
    url = 'https://files.pythonhosted.org/packages/fb/1f/9acd71b77e66fafb19cfb023e50cbb7ed2c3be3c72db999162bd36c518c4/websocket_client-0.53.0.tar.gz',
    sha256 = 'c42b71b68f9ef151433d6dcc6a7cb98ac72d2ad1e3a74981ca22bc5d9134f166'
)

http_file(
    name = 'module_manager',
    url = 'https://ksp.sarbian.com/jenkins/job/ModuleManager/142/artifact/ModuleManager.3.0.7.dll',
    sha256 = '2875f916cbdb2414c34a8b2acf34129968b425b7b517c83ef603436fca1fc489'
)
