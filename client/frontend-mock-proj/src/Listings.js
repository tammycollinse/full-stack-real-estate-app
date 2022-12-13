import ListingsCard from "./ListingsCard";

function Listings({listingsData}){ //this is going to render listings that is going to render listings card
    
    return (

     <ul className="cards">
        {listingsData.map((dataItem)=>{
         return <ListingsCard
         listingsData={listingsData}
         
         />
        })
      
     }
     </ul>
    
    )
}

export default Listings;