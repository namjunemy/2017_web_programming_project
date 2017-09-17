const HttpStatus = require('http-status-codes');
const MySQL = require('mysql');
const MySQLConfig = require('../../config/mysql');
const connection = MySQL.createConnection(MySQLConfig);

const register = (req, res) => {
  if (!req.body.id) {
    return res.status(HttpStatus.BAD_REQUEST).end();
  }
  const id = parseInt(req.body.id);
  connection.query('insert into user(u_id, password) values (?, ?)', [id, req.body.password], (err, result) => {
    if (err) {
      return res.send('해당 정보로 회원가입이 불가합니다. 중복 된 아이디 입니다. ');
    }

    const resultRows = result.affectedRows;
    if (resultRows === 0) {
      return res.status(HttpStatus.BAD_REQUEST).json(result);
    }
    res.redirect("/");
  });
};

const findOne = (req, res) => {
  const id = parseInt(req.query.id);
  connection.query('select * from user where u_id = ? and password = ?', [id, req.query.password], (err, result) => {
    if (err) {
      return res.status(HttpStatus.INTERNAL_SERVER_ERROR).json(err);
    }
    if(result.length !== 0){
      return res.status(HttpStatus.OK).json(result);
    }
    return res.status(HttpStatus.INTERNAL_SERVER_ERROR).json(err);
  });
};

module.exports = {findOne, register};
