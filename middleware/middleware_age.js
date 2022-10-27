const reqAgeFilter = (req, res, next) => {
    // console.log('inside middleware');
    // next();

    if(req.query.age > 18) {
        console.log('allowed.');
        next();
    }
    else {
        console.log('not allowed.');
        res.send('<h2>Page not allowed.</h2>');
    }
}

module.exports = reqAgeFilter;