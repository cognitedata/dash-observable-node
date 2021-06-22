# AUTO GENERATED FILE - DO NOT EDIT

observableNode <- function(children=NULL, id=NULL, hidden=NULL) {
    
    props <- list(children=children, id=id, hidden=hidden)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'ObservableNode',
        namespace = 'dash_observable_node',
        propNames = c('children', 'id', 'hidden'),
        package = 'dashObservableNode'
        )

    structure(component, class = c('dash_component', 'list'))
}
