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
        redirect_to booking_path(@booking)
        
      
      else  
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