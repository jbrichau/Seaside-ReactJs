import React from 'react';
import ReactDOM from 'react-dom';
import {isEqual} from 'underscore';
import config from 'react-global-configuration';

export function withSeaside(WrappedComponent) {
  return React.createClass({
    getInitialState: function() {
      return this.props;
    },
    componentDidUpdate: function(prevProps, prevState) {
      if (!isEqual(prevState, this.state)) {
        fetch(config.get("callbackUrl") + '&' + config.get("callbackValueArg") + '=' + JSON.stringify(this.state))
          .then((resp) => resp.json())
          .then((resp) => {
            if (!isEqual(resp, this.state))
              this.setState(resp);
          });
      }
    },
    call: function(actionName,...args) {
      fetch(config.get("actionCallbacks")[actionName]+ '=' + JSON.stringify(args))
        .then((resp) => resp.json())
        .then((resp) => {
          if (!isEqual(resp, this.state))
            this.setState(resp);
        });
    },
    render: function() {
      return <WrappedComponent seaside={this} {...this.state}/>;
    }
  });
}

export function renderWithSeaside(domElement, component, seasideconfig, seasidedata) {
  config.set(seasideconfig);
  //ReactDOM.render(<Demo {...seasidedata}/>, domElement);
  ReactDOM.render(React.createElement(component,seasidedata,null),domElement);
}
