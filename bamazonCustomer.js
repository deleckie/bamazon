// npm packages
var mysql = require("mysql");
var inquirer = require("inquirer");
var colors = require("colors");
var Table = require("cli-table");

// Connection info for sql database.
var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,

  // Username.
  user: "root",

  // Password
  password: "1234rewq",
  database: "bamazonDB"
});

console.log("Welcom to Bamazon: Your one stop shop for the Kaiju apocalypse")




//----------------------------------------------// var Table = require('cli-table');
// var table = new Table();
//
// table.push(
//     { 'item_id': 'Some value' }
//   , { 'Another key': 'Another value' }
// );
//
// console.log(table.toString());
//----------------------------------------------



con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
  con.query(sql, function (err, result) {
    if (err) throw err;
    console.log("Result: " + result);
  });
});


// inventoryTable();


// function that displays table
function inventoryTable() {
    connection.query("SELECT item_id, product_name, department_name, item_price, stock_quantity FROM products", function(err, results) {
    if (err) throw err;
// table
    var table = new Table({
        head: ["product_id", "product_name", "department_name", "item_price", "stock_quantity"],
        colWidths: [10, 20, 20, 20, 20],
        style: {
                       head: ['cyan'],
                       compact: false,
                       colAligns: ['center'],
                   }
    });
//Loop through the data
    for(var i = 0; i < results.length; i++){
        table.push(
            [results[i].item_id, results[i].product_name, results[i].department_name, results[i].price, results[i].stock_quantity]
        );
    }
    console.log(table.toString());
  });
}

// Open the SQL connection
connection.connect();

// Ask the user for her name
// And then do something with the answer!
inquirer.prompt([{
  name: 'item_id',
  type: 'input',
  message: 'What product would you like to see (input an ID)?',
}]).then( function(answers) {

    connection.query('select * from products where item_id = ' + answers.item_id, function (error, results, fields) {

      results.forEach( function(row) {
          console.log(row);
      });

      // Close the SQL connection
      connection.end();
    });

});
