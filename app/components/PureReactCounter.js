import React from 'react';

class Counter extends React.Component {

  constructor(props) {
    super(props);
    this.state = {"count": 0};
  }

  render() {
    return (
      <div>
        <h1>
          {this.props.count}
        </h1>
        <a href="javascript:{}" onClick={(ev) => {
          this.setState({
            "count": this.state.count + 1
          });
        }}>++</a>
        <a href="javascript:{}" onClick={(ev) => {
          this.setState({
            "count": this.state.count - 1
          });
        }}>--</a>
      </div>
    );
  }
}

export default Counter;
