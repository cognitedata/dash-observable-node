
module DashObservableNode
using Dash

const resources_path = realpath(joinpath( @__DIR__, "..", "deps"))
const version = "0.0.1"

include("observablenode.jl")

function __init__()
    DashBase.register_package(
        DashBase.ResourcePkg(
            "dash_observable_node",
            resources_path,
            version = version,
            [
                DashBase.Resource(
    relative_package_path = "dash_observable_node.min.js",
    external_url = "https://unpkg.com/dash_observable_node@0.0.1/dash_observable_node/dash_observable_node.min.js",
    dynamic = nothing,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "dash_observable_node.min.js.map",
    external_url = "https://unpkg.com/dash_observable_node@0.0.1/dash_observable_node/dash_observable_node.min.js.map",
    dynamic = true,
    async = nothing,
    type = :js
)
            ]
        )

    )
end
end
