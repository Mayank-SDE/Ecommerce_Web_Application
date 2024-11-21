const express=require('express');
const  db=require('../db');
const utils=require('../utils');
const router=express.Router();

router.get('/',(request,response)=>{
  const statement='Select id , title, details from Category Where isActive = 1';
  db.pool.query(statement,(error,result)=>{
      if(error){
        response.send(utils.createError(error));
      }else{
        if(result.length==0){
          response.send(utils.createError("No categories present. Please add some categories using the Add button."))
        }else{
          response.send(utils.createSuccess(result));
        }
      }
  })
});

router.post('/',(request,response)=>{
  const {title,details}=request.body;
  db.pool.query('Select details from Category where title = ? ',[title],(error,category)=>{
    if(error){
      response.send(utils.createError(error));
    }else{
      if(category.length!=0){
        response.send(utils.createError('Category title already exists. Please try some other category.'))
      }else{
        const statement="INSERT INTO Category(title,details) VALUES(?,?)";
        db.pool.execute(statement,[title,details],(error,category)=>{

          response.send(utils.createResult(error,category));
        })
      }
    }
  })
})
router.delete("/:id",(request,response)=>{
  const categoryId=request.params.id;
  const statement='Delete FROM Category where id = ? ';
  db.pool.execute(statement,[categoryId],(error,result)=>{
      response.send(utils.createResult(error,result));
  });
})
module.exports = router;