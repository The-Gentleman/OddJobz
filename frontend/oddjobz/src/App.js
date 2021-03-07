import React from 'react';
import './App.css';
import Header from './components/Header'
import Select from './components/Select'
function App() {
  return (
    <div className="App">
      {/* // 1 OF 5 STATELESS COMPONENTS */}
      <Header />
      {/* // 2 OF 5 STATELESS COMPONENTS */}
      <Select />
    </div>
  )
}
// TO DO
// CREATE A FORM DISPLAYING ALL THE TASKS
// STEP 1: CREATE A COMPONENT
// STEP 2: CREATE THE FORM. USE POCKET DOC + LEARN INSTRUCT FOR REFERENCE
// STEP 3: DISPLAY DROP DOWN LIST ON DOM
export default App;
