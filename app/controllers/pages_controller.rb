class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashbord
    @dreams = Dream.all
    # @reservations = Reservation.all
  end
end
