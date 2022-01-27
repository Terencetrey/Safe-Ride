import React from "react";




const SearchBar = ({user, setPassengerTrip}) => {


function handleSubmit(e){
  e.preventDefault();
  const passenger = {price:15, driver_id:1, passenger_id:user.id}
 
   fetch("/trips", {method:"POST", headers: {
              "Content-Type": "application/json",
            },body: JSON.stringify(passenger)}
)
     .then((r) => r.json())
     .then((data) => setPassengerTrip(data)) 
     
 


  

}

return(

<form onSubmit={handleSubmit} >
    <label htmlFor="header-search">
      <span className="visually-hidden">Search blog posts</span>
    </label>
    <input
      type="text"
      id="header-search"
      placeholder="Search location"
      name="s"
    />
    <button type="submit">Search</button>
  </form>
)


    
  
};

export default SearchBar;
