const express = require('express');

const router = express.Router();


// http://localhost:4000/products/abc
router.get('/abc',  (req, res) =>{
    // console.log('inside products route')
    res.send('Router is working....')
}) 


module.exports = router;