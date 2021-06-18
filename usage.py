import dash
from dash.dependencies import Input, Output, State
import dash_html_components as html

import flask

from dash_observable_node import ObservableNode

server = flask.Flask('app')

index_string = """<!DOCTYPE html>
<html>
    <head>
        {%metas%}
        <title>{%title%}</title>
        {%favicon%}
        {%css%}
    </head>
    <body>
        <h1>Observed Node</h1>
        <h4>Vanilla JS Button</h4>
        <button id="button" onclick="document.getElementById('observed_node').innerHTML = Date.now()">Change</button>
        {%app_entry%}
        <footer>
            {%config%}
            {%scripts%}
            {%renderer%}
        </footer>
    </body>
</html>"""

app = dash.Dash('app', server=server, index_string=index_string)

app.layout = html.Div(
    [
        html.H4("Observed Node"),
        ObservableNode(id="observed_node", children="initial value", hidden=False),
        html.H4("Log"),
        html.Div(id="output"),
    ],
    className="container",
)


@app.callback(
    Output("output", "children"),
    Input("observed_node", "children"),
    State("output", "children"),
)
def input_changed(new_content, old_content):
    return html.Div([old_content or "", new_content])


if __name__ == '__main__':
    app.run_server(debug=True)
