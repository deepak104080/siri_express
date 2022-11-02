HTTP Codes - https://developer.mozilla.org/en-US/docs/Web/HTTP/Status




express ------------------------------------
static - to serve static files




app ----------------------------------------
get - to handle all get requests
post - to handle all post request
use - middleware
listen - to run it on any port and listen to all the requests
set - to set some app config





req ------------------------------------
body - data passed in rest api
query - url query params - ?id=123
params - url params - /id
headers
ip
method
protocol
path




res --------------------------------------
send - send to client - any type of data like string, html, json, etc...
json - send to client - json type data
set - set headers of response
status - to specify http status code
headers



router --------------------------------
get - to handle all get requests
post - to handle all post request
use - middleware






Templating in Express ------------------------
EJS
PUG




Users
login
regitration




Products
1) all products
2) product - product id
product - category based
//product based on search string




Cart and Wishlist
add to wishlist
remove from wishlist
all wishlist





Order
place order
all orders
orders - user specific
orders - vendor specific
cancel order




-----------------------------------------------

Relational          Non-relational
Structured          Non-structured
Tabular             Non-tabular



monday : {
    income: 5000
    expense: 4000
}
tuesday: {
    income: 60000
    expense: 55050
}


up: {
    noida: {
        schools: 132
        colleges: 34
        coachings: 35
    },
    ghaziabad: {

    }
}



non-structured - key value pair
structured - table


monday : 5555
tuesday : 444


table                                           key value
SQL (Structured Query language)                 SQL does not here
SQL databases                                   NoSQL databases
oracle, mysql, ms sql, postgesql, rds           mongodb, cassandram, dynanodb, couchdb



ORM - Object Relational Model


mongodb - mongoose
atlas


