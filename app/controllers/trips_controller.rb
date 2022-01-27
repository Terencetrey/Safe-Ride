class TripsController < ApplicationController


    
         def index
        
          render json: Trip.all
        end
  
        def create
          trips = Trip.create!(trip_params)
          render json: trips, status: :created
        end
      
      
        def destroy
          trips = Trip.find(params[:id])
          trips.destroy
          head :no_content
        end

        private

        
def trip_params
    params.permit(:price, :pick_up_longitude, :pick_up_latitude, :drop_off_longitude, :drop_off_latitude, :driver_id, :passenger_id)

end

       
end
