const HTTP = require('http');
const PORT = 3000;
const URL = require('url').URL;

const dieRoll = (max, min) => {
  return Math.floor(Math.random() * max) + min;
};

const SERVER = HTTP.createServer((req, res) => {
  // createServer() method of the Node HTTP module returns a new instance
  // of the http.Server class
  let method = req.method;
  let path = req.url;

  if (path === '/favicon.ico') {
    res.statusCode = 404;
    res.end();
  } else {
    res.statusCode = 200;
    res.setHeader('Content-Type', 'text/plain');
    const myURL = new URL(path, `http://localhost:${PORT}`);
    const rolls = myURL.searchParams.get('rolls');
    const sides = Number(myURL.searchParams.get('sides'));

    if (rolls && sides) {
      for (let i = 0; i < rolls; i++) {
        res.write(dieRoll(sides, 1).toString() + '\n');
      }
    } else {
      res.write(dieRoll(6, 1).toString() + '\n');
    }

    res.write(`${method} ${path}\n`);
    res.end();
  }
});

SERVER.listen(PORT, () => {
  console.log(`Server listening on port ${PORT}...`);
});
