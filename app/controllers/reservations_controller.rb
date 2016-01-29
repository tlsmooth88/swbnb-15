class ReservationsController < ApplicationController
    
  def new
  end
  
  def create
  @reservation = current_user.reservations.build(reservation_params)
    if @reservation.save
      flash[:success] = "Reservation made!"
      redirect_to profile_path
    else
      redirect_to search_path
    end
  end

  private
  def reservation_params
    # params.require(:reservation)
  end
  
end
