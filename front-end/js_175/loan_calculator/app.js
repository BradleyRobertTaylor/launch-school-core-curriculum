const HTTP = require('http');
const PORT = 3000;
const URL = require('url').URL;

function getSearchParams(path) {
  const myURL = new URL(path, `http://localhost:${PORT}`);
  return myURL.searchParams;
}

const SERVER = HTTP.createServer((req, res) => {
  const path = req.url;
  const searchParams = getSearchParams(path);
  const APR = 0.05;
  const amount = searchParams.get('amount');
  const duration = searchParams.get('duration');
  const monthlyPayment = Number(amount) / Number(duration);

  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.write(`Amount: $${amount}\n`);
  res.write(`Duration: ${duration} years\n`);
  res.write(`APR: ${APR * 100}%\n`);
  res.write(`Monthly payment: $${monthlyPayment}\n`);
  res.end();
});

SERVER.listen(PORT, () => {
  console.log(`Listening on port :${PORT}`);
});
