const router = require('express').Router();
const controller = require('./account.controller');

router.post('/', controller.register);
router.get('/', controller.findOne);
module.exports = router;
