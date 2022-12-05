import ListingsCard from "./ListingsCard";

function Listings({listingsData}){ //this is going to render listings that is going to render listings card
    
    return (
     <div>
        <ListingsCard listingsData={listingsData}/>
     </div>
    )
}

export default Listings;