//const admin = require("firebase-admin");
//const firebase = require("firebase");
//
////Firbade config file
////const firebaseConfig = require("../config/config.js");
//const firebaseConfig = {
//  apiKey: "AIzaSyCWWgj5dUoWDQaR4Lan8ofWNYZc6x0i3zs",
//  authDomain: "to-do-list-e9403.firebaseapp.com",
//  projectId: "to-do-list-e9403",
//  storageBucket: "to-do-list-e9403.appspot.com",
//  messagingSenderId: "90831499630",
//  appId: "1:90831499630:web:baddada71f25e521dad17f",
//  measurementId: "G-8REJLMK3WB"
//      };
////admin.initializeApp({
////    credential: admin.credential.cert(firebaseConfig),
////    databaseURL: "https://functions-firebase-43a59.firebaseio.com"
////})
//
//
//var serviceAccount = require("../to-do-list-e9403-firebase-adminsdk-s3qhq-a433415d52.json");
//
//admin.initializeApp({
//  credential: admin.credential.cert(serviceAccount)
//});
//
//
//const db = admin.firestore()
//class Tasks {
//    constructor(id,task,description,time,isDone ) {
//            this.id = id;
//            this.task = task;
//            this.description = description;
//            this.time = time;
//            this.isDone = isDone;
//    }
//}
//
//module.exports = {Tasks};