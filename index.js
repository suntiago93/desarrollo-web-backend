const { Router } = require('express');
const express = require('express');
const app = express();

const router=require("./app/routers/index");
app.use('/',router);

app.get('/', (req, res) => {
    res.send('Hello World!')
  });

  const PORT=3001
  app.listen(PORT, () => {
    console.log(`Server started on port http://localhost:3001`);
  });