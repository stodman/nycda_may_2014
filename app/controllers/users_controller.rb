class UsersController < ApplicationController
  def index
    @users = User.all

    if @users.any?
      flash[:notice] ||= "Users loaded!"
    else
      flash[:alert] ||= "No users found!"
    end
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(params[:user])
      flash[:notice] = "User updated!"
      redirect_to user_path(@user)
    else
      flash[:alert] = "Failed to update user"
      redirect_to edit_user_path(@user)
    end
  end

  def create
    @user = User.create( params[:user] )

    if @user
      flash[:notice] = "Signed up successfully!"
      redirect_to user_path(@user)
    else
      flash[:alert] = "Oops! Something went wrong!"
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])

    @user.destroy

    flash[:notice] = "User deleted"

    redirect_to users_path
  end
end
