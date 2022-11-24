class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashbord
    @dreams = Dream.all
    @reservations = Reservation.all
  end

  def destroy
    @dream = Dream.find(params[:id])
    @dream.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to dashbord_path, status: :see_other
  end
end
