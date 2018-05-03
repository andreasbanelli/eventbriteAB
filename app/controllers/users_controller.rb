class UsersController < ApplicationController
  before_action :already_logged_in?, only: [:new, :create]

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		log_in @user
  		redirect_to @user
  	else
  		render :new
  	end
  end

  def show
  	@user = User.find(params[:id])

    if current_user && @user.id == current_user.id
      @display_email = "Your"
    end 
  end 





  private

	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation)
	end
end 

