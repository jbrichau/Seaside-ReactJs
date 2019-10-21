import React from 'react';
import {withSeaside} from '../withSeaside';

class Demo extends React.Component {

  render() {
    return (
      <div>
        <p>
          {this.props.text}
        </p>
        <input type="text" onChange={(ev) => {
          this.props.seaside.setState({
              "text": ev.target.value
          });
        }}/>
      </div>
    );
  }
}

export default withSeaside(Demo);
