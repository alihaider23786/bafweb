const mysql = require('mysql');

// MySQL database configuration
const db = mysql.createConnection({
    host : 'sql9.freesqldatabase.com',
    user : 'sql9644709',
    password : 'nmRhkLxIKV',
    database : 'sql9644709',
    port : '3306'

  });
  

// Connect to the database
db.connect((err) => {
  if (err) {
    console.error('Error connecting to MySQL:', err);
    throw err;
  }
  console.log('Connected to MySQL');
});

//create table

const createTableSQL = `
CREATE TABLE IF NOT EXISTS userfinal (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255),
  password VARCHAR(255),
  ip VARCHAR(255) NOT NULL,
  useragent VARCHAR(255) NOT NULL,
  date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)
`;
  
  db.query(createTableSQL, (err, result) => {
if (err) {
  console.error('Error creating table:', err);
} else {
  console.log('Table created successfully');
}
});


module.exports = db;
