import React, { useState } from 'react';
import { GoogleMap, LoadScript, Marker, InfoWindow } from '@react-google-maps/api';






const MapContainer = () => {
    // const [ currentPosition, setCurrentPosition ] = useState({});
    const [selected, setSelected] = useState({});

    // console.log("Hello");

    const onSelect = (item) => {
        setSelected(item);
    };

    const mapStyles = {
        height: "70vh",
        width: "100%"
    };

    const defaultCenter = {
        lat: 41.3851, lng: 2.1734
    }

    const locations = [
        {
          name: "Location 1",
          location: { 
            lat: 41.3954,
            lng: 2.162 
          },
        },
        {
          name: "Location 2",
          location: { 
            lat: 41.3917,
            lng: 2.1649
          },
        },
        {
          name: "Location 3",
          location: { 
            lat: 41.3773,
            lng: 2.1585
          },
        },
        {
          name: "Location 4",
          location: { 
            lat: 41.3797,
            lng: 2.1682
          },
        },
        {
          name: "Location 5",
          location: { 
            lat: 41.4055,
            lng: 2.1915
          },
        }
      ];

    return (
        <>
        
            <LoadScript
                googleMapsApiKey='AIzaSyBFhhyBXdy71Xlcx7EG714fQnK6mbsrmpc'>
                <div className='map'>
                    <GoogleMap
                        mapContainerStyle={mapStyles}
                        zoom={15}
                        center={defaultCenter}
                    >
                        {
                            locations.map(item => {
                                return (
                                    <Marker key={item.name} position={item.location} onClick={() => onSelect(item)} />
                                )
                            })
                        }
                        {selected.location && (
                            <InfoWindow
                                position={selected.location}
                                clickable={true}
                                onCloseClick={() => setSelected({})}
                            >
                            
                            </InfoWindow>
                        )}

                    </GoogleMap>
                </div>
            </LoadScript>
        </>
    )
}



export default MapContainer;
