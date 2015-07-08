class UsersController < ApplicationController
  before_action :require_login, only: [:index, :destroy]

  def index
    @users = User.all.order(created_at: :desc)
    @user = current_user

  end

  def destroy
    if current_user.admin?
      @user_nonadmin = User.find(params[:id])
      # binding.pry
      @user_nonadmin.destroy
      flash[:notice] = 'The User Has Been Deleted'
      redirect_to users_path
    end
  end

  private

  def require_login
    unless user_signed_in?
      flash[:error] = "You must be signed in to do that"
      redirect_to new_user_session_path
    end
  end
end
