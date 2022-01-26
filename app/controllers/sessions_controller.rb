class SessionsController < ApplicationController

  
  # skip_before_action :authorize, only: :create
  # skip_before_action :authenticate_user, only: [:create]

    def create
      user = User.find_by!(phone_number: params[:phone_number])
      # byebug
      if user.authenticate(params[:password])
        session[:user_id] = user.id
        render json: user, status: :created
      else
        render json: {message: 'invalid'}, status: :unauthorized
      end
    end
  
    def destroy
      session.delete :user_id
     
    end
  end