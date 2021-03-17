import React, { Component } from 'react'

class Select extends Component {
    constructor(){
        super();
        this.state = {
            categories: []
        }
    }

    componentDidMount(){
        const endPoint = 'http://localhost:3001/api/v1/tasks';
        fetch(endPoint)
         .then(response => response.json())
         .then(tasks => {
            const categories = tasks.data.map(task => {
                return task.attributes.category
             })
             this.setState({
                categories
             })
         })
         
    }
// object property shorthand

        render(){
        return (
        <div>
            <form>
                <select>
                    {this.state.categories.map(category => <option>{category}</option>)}
                </select>
            </form>
            <br></br>
            <button>Find me a professional!</button>
        </div>
        )
    }
}

export default Select;


    


