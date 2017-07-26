class UsersController < ApplicationController
  def new
    @user = User.new #form-for instance variable
  end

  def create
    @user = User.new(user_params) #
    if @user.save #double check
      session[:user_id] = @user.id
      flash[:notice] = "You have successfully signed up!"
      redirect_to root_path
    else
      render :new 
    end
  end



  private

    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation) #requires an input for :user (key) so that it can retrieve the values; whitelist so that the user model is only authorized to do a set number of functions
    end

end
