function ListingsCard({listingsData}){
    return(
      <li className="card-item">
        <div className="card">
          <img 
            // src={imageURL}
            // alt={activity}
            // className="card-image"
            //alot of the below might be undefined
          />
          {/* <div className="card-content">
            <div className="card-title">{activity}</div>
            <p>{location}</p>
            <p className="card-text">{description}</p>
            <div className="card-detail">
            <button onClick={handleLikes}> {`👍🏾  ${addedLikes}`} </button> 
             </div>
          </div> */}
        </div>
      </li>
    )
}

export default ListingsCard;