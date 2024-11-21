const createResult=(error,result)=>{
if(error){
  return createError(error);
}else{
  return createSuccess(result);
}
}

const createError=(error)=>{
return {error,status:"error"}
};

const createSuccess=(result)=>{
return {
  data:result,
  status:"success"
};
}
module.exports={
  createError,
  createResult,
  createSuccess
};