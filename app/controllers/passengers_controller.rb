class PassengersController < ApplicationController


    def index
      render json: Passenger.all
      end

      def show
        render json: Passenger.all
      end

      def create
        passenger = Passenger.create!(passenger_params)
        render json: passenger, status: :created
      end
    
    
      def destroy
        passenger = Passenger.find(params[:id])
        passenger.destroy
        head :no_content
      end
    
      private
    
      def passenger_params
        params.permit(
          :first_name,
          :phone_number,
          :gender
        )
        
      end
    
      def find_passenger
        Passenger.find(params[:id])
      end


end
