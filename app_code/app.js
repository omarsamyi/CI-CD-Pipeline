const express = require('express');
const app = express();
const port = 8080;

app.get('/', (req, res) => {
  res.send('Hello, World! This is a simple Node.js web application.');
});

app.listen(port, () => {
  console.log(`App running at http://localhost:${port}`);
});
