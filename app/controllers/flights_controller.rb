require "date"
class FlightsController < ApplicationController
	def index
	  @flights = Flight.all
	  unless params[:flight_dates].nil?
	
		@available_flights = Flight.where(from_airport_id: params[:from_airport_id],to_airport_id: params[:to_airport_id],start: params[:flight_dates].to_date.all_day)
	
		@seat = params[:passenger_seats].to_i
	  end
	end
  
	def show
	  @flight = Flight.find(params[:id])
	end
  end