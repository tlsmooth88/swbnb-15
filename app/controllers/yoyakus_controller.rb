class YoyakusController < ApplicationController
  
  def new
  end
  
  def create
  @yoyaku = current_user.yoyakus.build(yoyaku_params)
    if @yoyaku.save
      flash[:success] = "Reservation made!"
      redirect_to profile_path
    else
      redirect_to search_path
    end
  end

  private
  def yoyaku_params
    # params.require(:yoyaku).permit(:event_id)
  end
end
