import React from 'react';
import {withSeaside} from '../withSeaside';

class Counter extends React.Component {

  constructor(props) {
    super(props);
    this.state = props;
  }

  render() {
    return (
      <div>
        <h1>
          {this.props.count}
        </h1>
        <a href="javascript:{}" onClick={(ev) => {
          this.props.seaside.setState({
            "count": this.props.count + 1
          });
        }}>++</a> 
        |
        <a href="javascript:{}" onClick={(ev) => {
          this.props.seaside.setState({
            "count": this.props.count - 1
          });
        }}>--</a> 
        |
        <a href="javascript:{}" onClick={(ev) => {
          this.props.seaside.call("reset");
        }}>reset</a>
        |
        <a href="javascript:{}" onClick={(ev) => {
          this.props.seaside.call("set:",100);
        }}>100!</a>
      </div>
    );
  }
}

export default withSeaside(Counter);
