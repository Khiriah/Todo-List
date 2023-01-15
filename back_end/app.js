const  express = require('express');
const taskRoute = require('./routers/task_routers.js');

const app =express();
const port=8000;

app.use(express.json());
app.use(taskRoute)

//
//const ToDoList=[];
//
//app.post('/add',(req,res)=>{
//const {task}=req.body
//ToDoList.push(task);
//res.status(200)
//res.json(ToDoList)
//})
//
//app.get('/',(req,res)=>{
//res.status(200)
//res.json(ToDoList)
////res.send(ToDoList)
//})
//
//app.delete('/delete/:index',(req,res)=>{
//const i = req.params.index
//ToDoList.splice(i,1);
//res.status(201)
//res.json(ToDoList)
////res.send(ToDoList)
//})
//
//app.put('/update/:index',(req,res)=>{
//const i = req.params.index
//const {task}=req.body
//ToDoList[i]=task
//res.status(200)
//res.json(ToDoList)
////res.send(ToDoList)
//})

app.listen(port,()=>{
console.log(`your app on port http://localhost:${port}`)
});