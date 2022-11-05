const express = require('express');
const Product = require('../models/Product');

const router = express.Router();


// http://localhost:4000/products/allproducts
router.get('/allproducts', async (req, res) =>{
    try{
        const response = await Product.find();
        res.status(200).json(response);
    }
    catch(err){
        res.status(400).json({Error: err.message})
    }
})


// http://localhost:4000/products/addproduct
router.post('/addproduct', async (req, res) => {
    console.log(req.body);
    try{
        //store in db - mongoose command
        let tempObj = new Product({
            id: req.body.id,
            title: req.body.title,
            price: req.body.price,
            description: req.body.description,
            category: req.body.category,
            image: req.body.image
        });
        let responseDb = await tempObj.save();
        res.status(201).json(responseDb);
    }
    catch(err){
        res.status(400).json({Error: err.message})
    }
})


// http://localhost:4000/products/abc
// router.get('/abc',  (req, res) =>{
//     res.send('Router is working....')
// }) 


// http://localhost:4000/products/searchbyid/{product_id}
router.get('/searchbyid/:tempid', async (req, res) =>{
    console.log(req.params.tempid);
    try{
        const response = await Product.findOne({id: req.params.tempid});
        res.status(200).json(response);
    }
    catch(err){
        res.status(400).json({Error: err.message})
    }
}) 


// http://localhost:4000/products/search_product/?id=12345
router.get('/search_product', async (req, res) =>{
    console.log(req.query.id);
    // console.log('inside products route')
    res.send('Router is working....')
}) 

router.put('/:id',  (req, res) =>{
    console.log(req.params.id);
    res.send('Router is working....')
})

router.delete('/:id',  (req, res) =>{
    console.log(req.params.id);
    res.send('Router is working....')
})


module.exports = router;


// jwt token
// bcrypt
// passport / passport-jwt
// auth - express auth