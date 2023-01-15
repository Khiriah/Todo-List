const  express = require('express');
const taskRoute =express.Router();
const {addTask,getTask,deleteTask,updateTask,getTaskById}=require('../controllers/tasks_controller')
taskRoute.get('/ToDoList',getTask)
//taskRoute.get('/ToDoList/:id',getTaskById)
taskRoute.post('/add',addTask)
taskRoute.delete('/delete/:index',deleteTask)
taskRoute.put('/update/:index',updateTask)

module.exports = taskRoute