class UsersController < ApplicationController 
   
  def index 
    
    user = User.all
    render json: user
  end

  def create 
    user = User.new(params.require(:user).permit(:name,:email, :username))

    if user.save 
      render json: user 
    else 
      render json: user.errors.full_messages 
    end
  end 


  def show 
    render json: User.find(params[:id])
  end 

  def destroy 
    user =  User.find(params[:id])
    if user.destroy 
      render json: 'User deleted'
    else
      render json: user.errors.full_messages 
    end 
  end 

  def update 
    user =  User.find(params[:id])
    if user.update(params.require(:user).permit(:username, :email)) 
      render json: user
    else
      render json: user.errors.full_messages 
    end 
  end 

end