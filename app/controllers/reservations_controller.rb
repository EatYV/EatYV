class ReservationsController < ApplicationController
  before_action :find_cuisine

  def create
    @reservation = @cuisine.reservations.new(reservation_params)
    @reservation.user_id = current_user.id
    @reservation.save

    if @reservation.save
      redirect_to cuisine_path(@cuisine)
    else
      #render 'new'
      render file: "#{Rails.root}/public/404.html", layout: false, status: 404
    end
  end

  private
  def find_cuisine
    @cuisine = Cuisine.find(params[:cuisine_id])
  end

  def reservation_params
    params.require(:reservation).permit(:name, :time, :message)
  end
end
