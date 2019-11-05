const express = require('express');
const router = express.Router();

const sql = require('../utils/sql');

router.get('/', (req, res) => {
    // should really get the user data here and then fetch it thru, but let's try this asynchronously
    console.log('at the main route');

    let query = "SELECT Image, ID, Name, Price, Weight FROM tbl_things";

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

        console.log(result); // should see objects wrapped in an array

        // render the home view with dynamic data
         res.render('home', { thing: result });

         // , { data: result }
    })
})

router.get('/users/:id', (req, res) => {
    console.log('hit a dynamic route!');
    console.log(req.params.id);

    let query = `SELECT * FROM tbl_things WHERE ID ="${req.params.id}"`;
// dynamic selection based on the id
    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }
        
        console.log(result); //should see objects in array
        
        
        //which isn't anything we can work with
        result[0].Weight = result[0].Weight.split(",").map(function(item) {
            item = item.trim(); // remove the extra spaces from each word

            return item;
        })

        // console.log('after split: ', result[0]);

        res.json(result); // sends the DB query back to the broswer
    })
})

module.exports = router;