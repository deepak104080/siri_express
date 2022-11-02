const express = require('express');
const Products = require('../models/Products');

const router = express.Router();


// http://localhost:4000/products/
router.get('/',  (req, res) =>{
    // console.log('inside products route')
    res.send('Router is working....')
})


// http://localhost:4000/products/addproduct
router.post('/addproduct', (req, res) => {
    console.log(req.body);
    //store in db - mongoose command
    res.send('success...')
})


// http://localhost:4000/products/abc
router.get('/abc',  (req, res) =>{
    // console.log('inside products route')
    res.send('Router is working....')
}) 


// http://localhost:4000/products/{product_id}
router.get('/:id',  (req, res) =>{
    console.log(req.params.id);
    // console.log('inside products route')
    res.send('Router is working....')
}) 


// http://localhost:4000/products/search_product/?id=12345
router.get('/search_product', async (req, res) =>{
    console.log(req.query.id);
    // console.log('inside products route')
    res.send('Router is working....')
}) 

module.exports = router;


// jwt token
// bcrypt
// passport / passport-jwt
// auth - express auth