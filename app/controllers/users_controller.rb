class UsersController < ApplicationController


    def index
        render json: User.all
      end
      def show
        render json: find_user
      end
    
      def me
        if current_user
          render json: current_user, status: :ok
        else
          render json: 'You are not logged in yet', status: :unauthorized
        end
      end
    
      def create
        user = User.create!(user_params)
        session[:user_id] = user.id
        render json: user, status: :created
      end
    
      def destroy
        user = find_user
        byebug
        if current_user.admin?
          user.destroy
          head :no_content
        else
          render json: "Can't Delete, you are not an admin"
        end
      end
    
      private
    
      def user_params
        params.permit(
          :first_name,
          :last_name,
          :email,
          :phone_number,
          :password,
          :password_confirmation,
          
        )
        # params.permit(:username, :first_name, :last_name, :password,:password_confirmation, :img_url)
      end
    
      def find_user
        User.find(params[:id])
      end


end
