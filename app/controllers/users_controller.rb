class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to users_path(@user) , notice: 'Successfully deleted User'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :phone, :is_supplier, :is_active)
  end
end
