class ReservationsController < ApplicationController

  def create
    @dream = Dream.find(params[:dream_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.dream = @dream
    @reservation.user_id = current_user.id

    if @reservation.save
      redirect_to dashbord_path, notice: 'Reservation validée !'
    else
      redirect_to dreams_path, notice: 'Reservation annulée !'
      # render :new, status: :unprocessable_entity
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date)
  end
end
