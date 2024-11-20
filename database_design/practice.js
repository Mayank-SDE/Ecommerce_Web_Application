
function fetchData(){
  return new Promise((resolve,reject)=>{
    setTimeout(()=>{
// resolve("Task successful execute");
reject("Task does not execute");
    },2000);
  })
}

async function randomAsyncFunction(){
  try {
    const response=await fetchData();
    console.log(response);
  } catch (error) {
    console.log("Error got caught !!");
  }
}

function printSOmething(){
  console.log("Hey Alok how are you !!");
}

randomAsyncFunction();
printSOmething();

/*
fetchData().then((data)=>{
console.log(data);
}).catch((error)=>{
console.log(error);
});
*/

/*
Creating and handling promises using then and catch block.
const promise=new Promise((resolve,reject)=>{
  const success=false;
  if(success){
    resolve("This is success");
  }else{
    reject("This is unsuccessfull")
  }
});

promise.then((data)=>{
  console.log(data);
}).catch((error)=>{
console.log(error);
});
*/

/*
const promise = new Promise((resolve,reject)=>{
  const sucess = false;
  if(sucess){
    resolve("thisi is sucess")

  }else{
    reject("this is not sucess")
  }
})

console.log(promise);
*/
/* 
console.log("Task 1");
setTimeout(()=>{
console.log("Task 2");
},2000);

console.log("Task 3");
*/

/*
const promise = new Promise((resolve,reject)=>{

    const success=true;
    if(success){
      resolve("This is successfull");
    }else{
      reject("This is not successfull");
    }
});

console.log(promise);
*/