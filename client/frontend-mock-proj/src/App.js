import logo from './logo.svg';
import './App.css';
import React , {useState , useEffect} from "react";
import Listings from './Listings';
import Agents from "./Agents"


function App() { 

  const [listingsData, setListingsData] = useState([])
  const [agentsData , setAgentsData] = useState([])

  function getAgentsData(){
    fetch("http://localhost:3000/agents")
    .then(response => response.json())
    .then(data => {
      setAgentsData(data)
      console.log(agentsData)
    })
  }

  //agents data in a use effect for testing

  useEffect(()=>{
    fetch("http://localhost:3000/agents")
    .then(response => response.json())
    .then(data => 
      setAgentsData(data))
      console.log(agentsData)
  }, [])

  // function getListingsData(){
  //   fetch("http://localhost:3000/listings")
  //     .then(response => response.json())
  //     .then(data => setListingsData(data))
  //     console.log(listingsData)
  // }
  
  useEffect(() => { //useEffect syntax, fetching our data can come
   fetch("http://localhost:3000/listings")
   .then(response => response.json())
   .then(data => setListingsData(data))
   console.log(listingsData)
  }, [])

 // console.log("this is the data coming from the fetch in the app component" + listingsData) //this is not setting state, why???


  function loginUser(){
    //this will hold our login form
  } //still not sure what purpose our login will give to our page
  


  return (
    <div className="container-page">
      <div className="login-section">
        <h1>our login buttons will go over here</h1>
      </div>

     <div className="header">
      <h1 onClick={getAgentsData}>This will be our header page</h1>

     </div>

     <div className="search-banner">
      <h1 >This is where our search items/tools are going to our</h1>
     </div>

     <div className="featured-homes-container">
     <Listings listingsData={listingsData}/>
      <h1>This is where our featured homes will go</h1>
      <h2>    I need to test this styling to see what is going to happen</h2>
     </div>
     
     <div className="footer">

     </div>
     
    </div>
    
  );
}

export default App;
