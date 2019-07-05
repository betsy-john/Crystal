class UserController < ApplicationController
  def list
    @users = Users.all
  end

  def show
    @user = Users.find(params[:id])
  end

  def new
    @user = Users.new
  end

  def create
    @user = Users.new(user_params)
    if @user.save
      redirect_to :action => 'list'
    end
  end

  def user_params
      params.require(:users).permit(:name, :email, :password, :phone_number)
  end

  def edit
    @user = Users.find(params[:id])
  end

  def update
    @user = Users.find(params[:id])

    if @user.update_attributes(user_param)
       redirect_to :action => 'show', :id => @user
    end
  end

  def user_param
    params.require(:user).permit(:name, :email, :password, :phone_number)
 `end

  def delete
    Users.find(params[:id]).destroy
    redirect_to :action => 'list'
  end

end
