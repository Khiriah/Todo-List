const Tasks = require("../config/config.js");

const ToDoList=[];

addTask =async (req,res) =>{
const {task,description,time}=req.body
  await Tasks.add({task,description, time,isDone:false});
res.status(200)
res.send({ msg: "User Added" });

}

getTask= async (req,res)=>{
res.status(200)
 const task =await Tasks.get();
 const list = task.docs.map((doc) => ({ id: doc.id, ...doc.data() }));
 res.send(list);
 res.send({ msg: "User getTask" });
}

//getTaskById= async (req,res)=>{
//const i = req.params.index
//res.status(201)
////  res.send(ToDoList[i]);
////const t =await Tasks.get();
//console.log(Tasks['id'])
//  res.send({ msg: "User getTaskById" });
//
//}

deleteTask=(req,res)=>{
const i = req.params.index
ToDoList.splice(i,1);
res.status(201)
res.json(ToDoList)
res.send({ msg: "User deleteTask" });
}

updateTask=(req,res)=>{
const i = req.params.index
const {task}=req.body
ToDoList[i]=task
res.status(200)
res.json(ToDoList)
res.send({ msg: "User deleteTask" });
}

module.exports={addTask,getTask,deleteTask,updateTask};





