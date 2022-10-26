const express = require('express');
const app = express();
// app - active express apllication

//http://localhost:4000/about
app.get('/about', (req, res) => {
    res.send('Express application  - About')
})

//http://localhost:4000/services
app.get('/services', (req, res) => {
    res.send('<h2>Express application  - Services</h2>')
})

//http://localhost:4000/data
app.get('/data', (req, res) => {
    const tempObj = {
        name: 'deepak',
        age: 111111111111111
    }
    res.set({
        'Content-Type': 'text/json'
    })
    res.status(400);
    // res.send(tempObj);
    res.json(tempObj);


    // const arr = [1,2,3,4];
    // res.json(arr);
})

//http://localhost:4000/
app.get('/', (req, res) => {
    res.send('Express application is running..............')
})


// use - represents middleware
// req - object from client to server
// res - object from server to client

//to run server on port
app.listen(4000);