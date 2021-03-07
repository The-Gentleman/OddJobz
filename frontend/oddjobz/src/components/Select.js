import React from 'react'

export default function Select() {
    const getTasks = () => {
        fetch("http://localhost:3000/api/v1/tasks")
            .then(response => response.json())
            .then(data => {
                
            })
    }
    return (
        <div>
            <p>Please select a category</p>
            
            <form>
                <select>
                <option>Landscaper</option>
                <option>Electronics</option>
                <option>Dog Walker</option>
                
                    {/* 
                    how do i get data from the backend?
                    via a fetch request. I think I need a componentDidMount 
                    */}
                </select>
                <br></br>
                <br></br>
                <input id="submit" type="submit" name="submit" value="Find me a professional!" class="submit"></input>
            </form>
        </div>
    )
}
