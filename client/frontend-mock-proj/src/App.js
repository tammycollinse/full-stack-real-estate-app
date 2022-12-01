import logo from './logo.svg';
import './App.css';
import React , {useState , useEffect} from "react";


function App() { 
  
  useEffect(() => { //useEffect syntax, fetching our data can come
   fetch("http://localhost:3000/listings")
   .then(response => response.json())
   .then(data => console.log(data))
  })

  function loginUser(){
    //this will hold our login form
  } //still not sure what purpose our login will give to our page
  


  return (
    <div className="container-page">
      <div className="login-section">
        <h1>our login buttons will go over here</h1>
      </div>

     <div id="header">
      <h1>This will be our header page</h1>
     </div>

     <div className="search-banner">
      <h1>This is where our search items/tools are going to our</h1>
     </div>

     <div className="featured-homes-container">
      <h1>This is where our featured homes will go</h1>
     </div>
    </div>
  );
}

export default App;
