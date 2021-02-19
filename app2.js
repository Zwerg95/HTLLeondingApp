// import packages
const express = require('express');


// init express app
const app = express();
const port = 3000;


// define middleware functions
let visits = 0; // global counter
let myLogger = function(req, res, next) {
    
    if(req.url == '/' || req.url.includes('.html') ) {
        visits += 1;
        console.log(`Besucher: ${visits}`);
    }
    
    next(); // weiterleiten an nächste Middleware
}

// init middleware functions
app.use(myLogger);
app.use(express.static('./'));

// start server
app.listen(port, () => {
    console.log('Server gestartet!');
    console.log(`Server ist erreichbar unter Port ${port}`);
});
