% Auto-generated: do not edit by hand
\name{observableNode}

\alias{observableNode}

\title{ObservableNode component}

\description{
ObservableNode is a DOM element (a div) which creates a MutationObserver for its DOM subtree. This way it can trigger callbacks when any change in the subtree happens. It is not limited to changes having to originate in another Dash callback.  Currently not tested beyond using it as a string storage, so YMMV with an actual DOM subtree.
}

\usage{
observableNode(children=NULL, id=NULL, hidden=NULL)
}

\arguments{
\item{children}{Character. The content of the DOM node.}

\item{id}{Character. The ID used to identify this component in Dash callbacks.}

\item{hidden}{Logical. Whether to hide the node (yes by default).}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

