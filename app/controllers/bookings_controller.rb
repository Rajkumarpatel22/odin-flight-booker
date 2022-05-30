class BookingsController < ApplicationController
    def new
      @booking = Booking.new
      @flight = Flight.find(params[:flight_id])
      @count = params[:seat].to_i
      @count.times { @booking.passengers.build }
    end
  
    def create
      @booking = Booking.new(booking_params)
     

      if @booking.save
        @booking.passengers.each do |pass|
          PassengerMailer.confirmation_email(pass, @booking).deliver_now!
        end
  
        flash[:success] = "Booking successful!"
        redirect_to booking_path(@booking)
      else
        flash[:danger] = "Flight booking error! #{@booking.errors.messages}"
        render :new
      end
    end
  
  
    def show
      @booking = Booking.find(params[:id])
      @flight = Flight.find(@booking.flight_id)
    end
  
    def booking_params
      params.require(:booking).permit(:flight_id,passengers_attributes: [:name,:email])
    end
  end