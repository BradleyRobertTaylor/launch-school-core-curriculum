const HTTP = require('http');
const PORT = 3000;

const SERVER = HTTP.createServer((req, res) => {
  // createServer() method of the Node HTTP module returns a new instance
  // of the http.Server class
  let method = req.method;
  let path = req.url;

  if (path !== '/favicon.ico') {
    res.statusCode = 200;
    res.setHeader('Content-Type', 'text/plain');
    res.write(`${method} ${path}\n`);
    res.end();
  }
});

SERVER.listen(PORT, () => {
  console.log(`Server listening on port ${PORT}...`);
});
