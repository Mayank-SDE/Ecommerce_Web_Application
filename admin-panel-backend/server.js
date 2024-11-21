const express=require("express");
const cors=require("cors");
const morgan=require('morgan');
const app=express();
app.use(cors());
app.use(express.json({limit:'10mb'}));
app.use(express.urlencoded({limit:'100mb'}));
app.use(morgan('combined'));

const adminRouter=require('./routes/admin');
const categoryRouter=require('./routes/category');

app.use("/admin",adminRouter);
app.use('/category',categoryRouter);

app.get("/",(request,response)=>{
  response.json({
    message:"Api testing successfull."
  })
});



app.listen(4000,'0.0.0.0',()=>{
  console.log("Server is running on PORT no 4000");
});