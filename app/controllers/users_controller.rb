class UsersController < ApplicationController
  
    skip_before_action :authorize, only: :create
    # skip_before_action :verify_authenticity_token
  
    def index
      user = User.all
      render json: user, status: :ok
    end
  
    # def show
    #   user = User.find_by(id: session[:user_id])
    #   render json: user, status: :ok
    # end
  
    # #Signing up a new user
    def create
      user = User.create(user_params)
      if user.valid?
        session[:user_id] = user.id
        render json: user, status: :created
       else
        render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    
  
    # # autologin feature
    # if the user leaves the page, they will not be logged out
    # def show
    #     user = User.find(session[:user_id])
    #     render json: user
    # end
  
    # DELETE /users/:id - delete user account
    def destory
      user = User.find(params[:id])
      user.delete
      head :no_content
    end
  ##trying admin unlocks
    def update
      user = User.find(id: session[:user_id])
     
      if
          user.isAdmin == true
          user.update(change_params)
          
      else
        render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
      end
    end
   
  
    private
  
    def user_params
      params.permit(
        :first_name,
        :last_name,
        :email_address,
        :phone_number,
        :username,
        :password,
        :isAdmin
      )
    end
  
  def change_params
    params.permit(
      
      :username
      
    )
    end
  end
  