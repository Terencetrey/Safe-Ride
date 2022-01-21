class DriversController < ApplicationController

    def index
        render json: Driver.all
      end
      def show
        render json: Driver.all
      end

      def create
        driver = Driver.create!(driver_params)
        render json: driver, status: :created
      end
    
    
      def destroy
        driver = Driver.find(params[:id])
        driver.destroy
        head :no_content
      end
    
      private
    
      def driver_params
        params.permit(
          :first_name,
          :phone_number,
          :ride_status,
          :total_rides,
          :user_id
          
        )
        
      end
    
      def find_driver
        Driver.find(params[:id])
      end







end
