const express=require('express');
const cryptoJs=require('crypto-js');
const jwt=require('jsonwebtoken');
const utils=require('../utils');
const db = require('../db');
const { secret } = require('../config');
const router=express.Router();

router.post("/signup",(request,response)=>{
const {firstName,lastName,email,password,phone}=request.body;

const statement='INSERT INTO Admin(firstName,lastName,email,password,phone) VALUES(?,?,?,?,?)';

const encryptedPassword=String(cryptoJs.MD5(password));

db.pool.execute(statement,[firstName,lastName,email,encryptedPassword,phone],(error,result)=>{
if(error){
response.send(utils.createError(error));
}else{
  response.send(utils.createSuccess(result));
}
})
});

router.post("/signin",(request,response)=>{

  const {email,password}=request.body;
  const encryptedPassword=String(cryptoJs.MD5(password));

  const statement='Select id, firstName, lastName, email, phone from admin where password = ? and email=?';

  db.pool.query(statement,[encryptedPassword,email],(error,result)=>{
    if(error){
      response.send(utils.createError(error));
    }else{
      if(result.length==0){
        response.send(utils.createError("Admin user does not exists"));
      }else{
        // Get the matching admin details
        const {id,firstName,lastName,email,phone}=result[0];
        const payload={
          id,firstName,lastName,email,phone
        };
        const token=jwt.sign(payload,secret);

        response.send(utils.createSuccess({token,firstName,lastName,phone,email}));
      }
    }
  });

  

});

module.exports=router;