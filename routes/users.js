const express = require('express');

const router = express.Router();


// http://localhost:4000/users/abc
router.get('/login',  (req, res) =>{
    res.send('Login Router is working....')
}) 


module.exports = router;