import React from 'react';
import ReactDOM from 'react-dom';
import config from 'react-global-configuration';
import {renderWithSeaside} from './withSeaside';

import Demo from './components/Demo';
import Counter from './components/Counter';

export function renderDemo(domElement, seasideconfig, seasidedata) {
  renderWithSeaside(domElement, Demo, seasideconfig, seasidedata)
}

export function renderCounter(domElement, seasideconfig, seasidedata) {
  renderWithSeaside(domElement, Counter, seasideconfig, seasidedata)
}
