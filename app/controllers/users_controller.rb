class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def update
    @user = User.find(params[:id])
    @user.update_attribute :admin, !@user.admin

    flash[:notice] = "Saved!"
    redirect_to :back
  end

  def show
    @user = User.find(params[:id])
    unless @user == current_user || current_user.admin?
      redirect_to root_path, :alert => "Access denied."
    end
  end
end
