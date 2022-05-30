class PassengerMailer < ApplicationMailer
    default from: 'odinairlines@example.com'

    def confirmation_email (passenger, booking)
      @user = passenger
      @url = 'http://localhost:3000'
      @booking = booking
      mail(to: @user.email, subject: 'Your Eticket', template_name: 'passenger_booking_email')
    end
end
