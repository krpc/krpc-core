" Rules for building service definition json from a service assembly "

load("@rules_dotnet//dotnet/private:providers.bzl", "DotnetAssemblyInfo")

def _impl(ctx):
    libs = []
    for src in ctx.attr.srcs:
        libs.extend(src[DotnetAssemblyInfo].libs)
    args = ["--output=%s" % ctx.outputs.out.path, ctx.attr.service] + [x.path for x in libs]
    ctx.actions.run(
        inputs = ctx.files.srcs,
        outputs = [ctx.outputs.out],
        arguments = args,
        progress_message = "Generating service definitions for %s" % ctx.outputs.out.short_path,
        executable = ctx.executable._service_definitions_tool,
    )

service_definitions = rule(
    implementation = _impl,
    attrs = {
        "srcs": attr.label_list(
            providers = [DotnetAssemblyInfo],
        ),
        "service": attr.string(mandatory = True),
        "out": attr.output(mandatory = True),
        "_service_definitions_tool": attr.label(
            executable = True,
            cfg = "exec",
            default = Label("//tools/ServiceDefinitions:ServiceDefinitions"),
        ),
    },
)
