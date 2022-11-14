const express = require('express');
const User = require('../models/User');

const router = express.Router();


// http://localhost:4000/users/login
router.post('/login', async (req, res) =>{
    console.log(req.body);
    const tempEmail = req.body.email;
    const tempPassword = req.body.password;
    try{
        const response = await User.findOne({email: tempEmail});
        if(Object.keys(response).length !== 0) {
            if(response.password === tempPassword) {
                //successfull login
                res.status(200).json(response);
            }
            else {
                //password incorrect
                res.status(422).json({err: 'Invalid Password'});
            }
        }
        else {
            //user not found
            res.status(422).json({err: 'Invalid Username'});
        }
    }
    catch(err) {
        res.status(400).json({Error: err.message})
    }
})

// http://localhost:4000/users/register
router.post('/register', async (req, res) =>{
    console.log(req.body);
    try{
        const tempObj = new User({
            userid: 'NS'+Math.random()*1000000000,
            name: req.body.name,
            email: req.body.email,
            mobile: req.body.mobile,
            password: req.body.password
        })
        const response = await tempObj.save();
        res.status(201).json(response);
    }
    catch(err) {
        res.status(400).json({Error: err.message})
    }
}) 


module.exports = router;



