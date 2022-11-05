const express = require('express');
const app = express();
const mongoose = require('mongoose');
// app - active express apllication
const reqAgeFilter = require('./middleware/middleware_age'); 
//app.use(reqAgeFilter);

app.use(express.json());

const usersRoute = require('./routes/users');
const productsRoute = require('./routes/products');


// http://localhost:4000/users
app.use('/users', usersRoute);
app.use('/products', productsRoute);

//http://localhost:4000/about
app.get('/about', reqAgeFilter, (req, res) => {
    res.send('Express application  - About')
})

//http://localhost:4000/services
app.get('/services', reqAgeFilter, (req, res) => {
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



const path = require('path');
const publicpath = path.join(__dirname, 'public');
app.use(express.static(publicpath));

//http://localhost:4000/staticfile1
app.get('/staticfile1', (req, res) => {
    res.sendFile(`${publicpath}/staticfile1.html`);
})


//http://localhost:4000/staticfile2
app.get('/staticfile2', (req, res) => {
    res.sendFile(`${publicpath}/staticfile2.html`);
})


app.set('view engine', 'ejs');

//http://localhost:4000/ejsfile1
app.get('/ejsfile1', (req,res) => {
    res.render('ejsfile1');
})

app.get('/ejsfile2', (req,res) => {
    const data = {
        name: 'abc',
        city: 'delhi'
    }
    res.render('ejsfile2', {data});
})


mongoose.connect('mongodb+srv://testuser001:z9xsFuktzYAs4fMk@cluster0.2eq41.mongodb.net/siri_ecommerce?retryWrites=true&w=majority')

// use - represents middleware
// req - object from client to server
// res - object from server to client

//to run server on port
app.listen(4000);