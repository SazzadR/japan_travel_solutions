const express = require("express");
const { visitorCounterFunction } = require("./utils");

const app = express();
const port = 3000;

const visitorCounter = visitorCounterFunction();

app.get("/", (request, response) => {
    response.send(`You are visitor number: ${visitorCounter()}`);
});

app.listen(port, () => {
    console.log(`App listening on port ${port}`)
});
