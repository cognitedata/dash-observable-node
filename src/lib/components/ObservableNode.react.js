import React, {Component} from 'react';
import PropTypes from 'prop-types';

/**
 * ObservableNode is a DOM element (a div) which creates a MutationObserver for its DOM subtree.
 * This way it can trigger callbacks when any change in the subtree happens. It is not limited
 * to changes having to originate in another Dash callback.
 *
 * Currently not tested beyond using it as a string storage, so YMMV with an actual DOM subtree.
 */
export default class ObservableNode extends Component {

    startObserving() {
        if (!this.observer) {
            this.observer = new MutationObserver(
                () => {
                    this.setProps({children: this.getElement().innerHTML});
                }
            );
            this.observer.observe(
                this.getElement(),
                {attributes: false, childList: true, subtree: true },
            )
        }
    }

    stopObserving() {
        this.observer.disconnect();
        this.observer = null;
    }

    getElement() {
        return document.getElementById(this.props.id);
    }

    render() {
        const {id, setProps, children, hidden} = this.props;
        this.setProps = setProps;
        return (
            <div id={id} style={{display: hidden ? "none": "block"}}>{children}</div>
        );
    }

    componentDidMount() {
        this.startObserving();
    }

    componentWillUnmount() {
        super.componentWillUnmount();
        this.stopObserving();
    }
}

ObservableNode.defaultProps = {
    hidden: true,
};

ObservableNode.propTypes = {
    /**
     * The ID used to identify this component in Dash callbacks.
     */
    id: PropTypes.string,

    /**
     * The content of the DOM node.
     */
    children: PropTypes.string,

    /**
     * Whether to hide the node (yes by default).
     */
    hidden: PropTypes.bool,

    /**
     * Dash-assigned callback that should be called to report property changes
     * to Dash, to make them available for callbacks.
     */
    setProps: PropTypes.func
};
