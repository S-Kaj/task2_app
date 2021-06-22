class ReservationsController < ApplicationController

  before_action :permit_params, except: :new # except以降要らない？

  def index
  end

  def new # ここはroomsのshowで代用しているので、後で削除予定
  end

  def create
    @reservation = Reservation.new(params.require(:reservation).permit(:start_date, :end_date, :total_price, :persons, :many_days, :user_id, :room_id))
    if @reservation.save
      flash[:notice] = "予約を受け付けました。"
      redirect_to @reservation
#    else
#      render "posts"
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end


  def back
    @reservation = Reservation.new(permit_params)
#    render :new # ここ変えると思う
  end

  def confirm
    @reservation = Reservation.new(permit_params)
#    if @reservation.invalid?
#      render :new # ここ変えると思う
#    end
        
  end

  private
  
    def permit_params
     params.require(:reservation).permit(:start_date, :end_date, :total_price, :persons, :many_days, :user_id, :room_id) # 元の記述
#     params.permit(:start_date, :end_date, :total_price, :persons, :many_days, :user_id, :room_id) # 参考URLに沿って記述を変更
    end
end
