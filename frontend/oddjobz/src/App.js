import React from 'react';
import './App.css';
import Header from './components/Header'
import Select from './components/Select'
function App() {
  return (
    <div className="App">
      {/* // 1 OF 5 STATELESS COMPONENTS */}
      <Header />
      <Select category={"category"} />
    </div>
  )
}
export default App;
