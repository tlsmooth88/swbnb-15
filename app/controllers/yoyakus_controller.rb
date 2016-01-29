class YoyakusController < ApplicationController
  
  def new
  end
  
  def create
  @yoyaku = current_user.yoyakus.build(yoyaku_params)
    if @yoyaku.save
      flash[:success] = "Reservation made!" #Why doesn't it appear?
      redirect_to profile_path
    else
      redirect_to search_path
    end
  end

  private
  def yoyaku_params
  end
end
