# AUTO GENERATED FILE - DO NOT EDIT

export observablenode

"""
    observablenode(;kwargs...)
    observablenode(children::Any;kwargs...)
    observablenode(children_maker::Function;kwargs...)


An ObservableNode component.
ObservableNode is a DOM element (a div) which creates a MutationObserver for its DOM subtree.
This way it can trigger callbacks when any change in the subtree happens. It is not limited
to changes having to originate in another Dash callback.

Currently not tested beyond using it as a string storage, so YMMV with an actual DOM subtree.
Keyword arguments:
- `children` (String; optional): The content of the DOM node.
- `id` (String; optional): The ID used to identify this component in Dash callbacks.
- `hidden` (Bool; optional): Whether to hide the node (yes by default).
"""
function observablenode(; kwargs...)
        available_props = Symbol[:children, :id, :hidden]
        wild_props = Symbol[]
        return Component("observablenode", "ObservableNode", "dash_observable_node", available_props, wild_props; kwargs...)
end

observablenode(children::Any; kwargs...) = observablenode(;kwargs..., children = children)
observablenode(children_maker::Function; kwargs...) = observablenode(children_maker(); kwargs...)

