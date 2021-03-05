import React from 'react';
import ReactDOM from 'react-dom';
import App from './App'
import { Provider } from 'react-redux'
import store from './store.js'


ReactDOM.render(
  <Provider store ={ store }>
    <App />
  </Provider>,
  document.getElementById('root')
);

//  TO DO:
// CREATE THE WELCOME PAGE:
// Welcome message. Catchy motto. ---> Component 1
// Select a task. ---> Component 2

