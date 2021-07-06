class ReservationsController < ApplicationController


  def index
    @rooms = Room.all
    @reservations = Reservation.all
  end

  def new
  end

  def create
    @reservation = Reservation.new(params.require(:reservation).permit(:start_date, :end_date, :total_price, :persons, :many_days, :user_id, :room_id))
    if @reservation.save
      flash[:notice] = "予約を受け付けました。"
      redirect_to  @reservation
    else
      render "posts"
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end


  def confirm
    @reservation = Reservation.new(permit_params)
    @reservation.many_days = ( @reservation.end_date.to_i - @reservation.start_date.to_i ) / 86400  # 開始日と終了日から日数(many_days)を算出
    @reservation.total_price = @reservation.total_price * @reservation.persons * @reservation.many_days
  end

  private
  
    def permit_params
     params.require(:reservation).permit(:start_date, :end_date, :total_price, :persons, :many_days, :user_id, :room_id)
    end
end
