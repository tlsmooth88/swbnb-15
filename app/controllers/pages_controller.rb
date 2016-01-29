class PagesController < ApplicationController
  # before_action :set_user, only: [:home, :profile, :seattle_host_list, :tokyo_host_list]
  
  def home
    if user_signed_in?
      redirect_to profile_path
    end
  end

  def profile
    @user = current_user
    @reservations = @user.reservations
  end
  
  def seattle_host_list
    @seattlehosts = User.where(location: "Seattle").where(hosting: true)
  end
  
  def tokyo_host_list
    @tokyohosts = User.where(location: "Tokyo").where(hosting: true)
  end
=begin  
  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :location, :hosting)
  end
  
  def set_user
    @user = User.find(params[:id])
  end
=end
end