class ReservationController
    def user_reservations
        @reservations = Reservation.create(reservation_params)
    end
    
    private
    def reservation_params
        params.require(:reservation).permit(:user.id, :klass.id)
    end
end