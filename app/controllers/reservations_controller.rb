class ReservationsController < ApplicationController
  def new
    @dream = Dream.find(params[:dream_id])
    @reservation = Reservation.new
  end

  def create
    @dream = Dream.find(params[:dream_id])
    # @reservation.user_id = current_user.id
    @reservation = Reservation.new(reservation_params)
    @reservation.dream = @dream

    if @reservation.save
      redirect_to dream_path(@dream), notice: 'Reservation validée !'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date)
  end
end
