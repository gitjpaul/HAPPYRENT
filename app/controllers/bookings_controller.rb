class BookingsController < ApplicationController

  # GET /bookings
  def index
    @bookings = Booking.all
  end

  # POST /bookings
  def create
    @booking = Booking.new(booking_params)
    @car = Car.find(params[:car_id]) #ici on va rattacher la voiture actuelle au booking
    @booking.car = @car
    @booking.user = current_user

    if @booking.save
      redirect_to car_path(@car), notice: "Your booking has been done, we need to wait the owner accept it !"
    end
  end

  private

    # Only allow a trusted parameter "white list" through.
  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end
