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
  		#Notifications.new_user(@user)
  		redirect_to users_path
  	else
  		render 'new'
  	end
  end

  def index
  	@users = User.all
  end

  def edit
  	@user = User.find(params[:id])
  end

  def show
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	if @user.update_attributes(user_params)
  		redirect_to user_path(@user.id)
  	else
  		render 'edit'
  		#will return them to the edit page so they can try again#
 	end
 end

  def destroy
  	@user = User.find(params[:id])
  	@user.destroy
  	redirect_to user_path
  end

  private

  def user_params
  	params.require(:user).permit(:name, :email, :password)
  end

end

#<p><%= image_tag @user.avatar.url(:medium) %> 
#<br>
#	<p><%= image_tag @user.avatar.url(:thumb) %> 
#	<br>
