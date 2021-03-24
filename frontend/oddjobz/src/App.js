import React, { Component } from 'react'
import './App.css';
import Header from './components/Header'
import SelectProfessional from './components/SelectProfessional'
import { BrowserRouter as Router, Route} from 'react-router-dom'


export class App extends Component {

  render() {
    return (
      <div className="App">
        {/* 1 OF 5 STATELESS COMPONENTS */}
        <Header />
        <SelectProfessional category={"category"} />
        <Router>
          <Route exact path ='/header' component={Header}/>
        </Router>
      </div>
    )
  }
}

export default App

