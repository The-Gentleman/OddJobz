[] The code should be written in ES6 as much as possible
[X] Use the create-react-app generator to start your project.
[X] Your app should have one HTML page to render your react-redux application
[] There should be 5 stateless components
[] There should be 3 routes
[] The Application must make use of react-router and proper RESTful routing (should you choose to use react-router v3 please refer to the appropriate docs; docs for v4 can be found here)
[X] Use Redux middleware to respond to and modify state change
[] Make use of async actions and redux-thunk middleware to send data to and receive data from a server
[X] Your Rails API should handle the data persistence with a database. You should be using fetch() within your actions to GET and POST data from your API - do not use jQuery methods.
[] Your client-side application should handle the display of data with minimal data manipulation
[] Your application should have some minimal styling: feel free to stick to a framework (like react-bootstrap), but if you want to write (additional) CSS yourself, go for it!

===============================================================================
MODELS 

USER
    -name -- string
    -need --string 
    -description --text
has many tasks
has many professionals, through tasks

PROFESSIONAL
    -name --string
    -profession --string
    -number of stars --integer
has many tasks
has many users, through tasks


TASK
    -type --string
    -price --integer
    -user id --integer 
    -professional id --integer
belongs to user
belongs to professional
    