const express = require('express');
const router = express.Router();

router.get('/usuario', (req, res) => {
    res.send('get usuario')
  });

  module.exports=router;