const firebase = require("firebase");
const firebaseConfig = {
  apiKey: "AIzaSyCWWgj5dUoWDQaR4Lan8ofWNYZc6x0i3zs",
  authDomain: "to-do-list-e9403.firebaseapp.com",
  projectId: "to-do-list-e9403",
  storageBucket: "to-do-list-e9403.appspot.com",
  messagingSenderId: "90831499630",
  appId: "1:90831499630:web:baddada71f25e521dad17f",
  measurementId: "G-8REJLMK3WB"
      };



firebase.initializeApp(firebaseConfig);
const db = firebase.firestore();
const Tasks = db.collection("Tasks");
module.exports = Tasks;
