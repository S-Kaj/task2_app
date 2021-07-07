class RoomsController < ApplicationController
  def index
    @q = Room.ransack(params[:q])
    @rooms = @q.result(distinct: true)
  end

  def new # ルーム情報の登録
    @room = Room.new
  end

  def create
    @room = Room.new(params.require(:room).permit(:roomname, :roomintroduction, :roomfee, :roomaddress, :image, :user_id))
    if @room.save
      flash[:notice] = "ルーム情報を新規登録しました。"
      redirect_to @room # この書き方で/rooms/:id へ飛ぶ
    else
      render "new"
    end
  end

  def show
    @users = User.all # アイコンを表示させるための記述
    @room = Room.find(params[:id])
    @reservation = Reservation.new
    @reservation.total_price = @room.roomfee  # ルーム料金をとりあえず合計金額に入れる
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def posts
    @rooms = Room.all
  end
  
end
