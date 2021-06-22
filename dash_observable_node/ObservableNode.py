# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class ObservableNode(Component):
    """An ObservableNode component.
ObservableNode is a DOM element (a div) which creates a MutationObserver for its DOM subtree.
This way it can trigger callbacks when any change in the subtree happens. It is not limited
to changes having to originate in another Dash callback.

Currently not tested beyond using it as a string storage, so YMMV with an actual DOM subtree.

Keyword arguments:

- children (string; optional):
    The content of the DOM node.

- id (string; optional):
    The ID used to identify this component in Dash callbacks.

- hidden (boolean; default True):
    Whether to hide the node (yes by default)."""
    @_explicitize_args
    def __init__(self, children=None, id=Component.UNDEFINED, hidden=Component.UNDEFINED, **kwargs):
        self._prop_names = ['children', 'id', 'hidden']
        self._type = 'ObservableNode'
        self._namespace = 'dash_observable_node'
        self._valid_wildcard_attributes =            []
        self.available_properties = ['children', 'id', 'hidden']
        self.available_wildcard_properties =            []
        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs
        args = {k: _locals[k] for k in _explicit_args if k != 'children'}
        for k in []:
            if k not in args:
                raise TypeError(
                    'Required argument `' + k + '` was not specified.')
        super(ObservableNode, self).__init__(children=children, **args)
