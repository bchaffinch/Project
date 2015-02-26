class UsersController < ApplicationController
  def new 
  	@user = User.new
  end

# Creates a new user with parameters. If it can be saved
# to the database, it will redirect users to a new page
# else it will reload the same page
  def create
  	@user = User.new(user_params)
  	if @user.save!
  		redirect_to users_path
  	else
  		render 'new'
  	end
  end

  def index
  	@users = User.all
  end

  def edit
  end

  def show
  end

  private

  def user_params
  	params.require(:user).permit(:name, :email, :password)
  end

end
