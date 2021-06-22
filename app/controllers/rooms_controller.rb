class RoomsController < ApplicationController
  def index
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
    @room = Room.find(params[:id])
    @reservation = Reservation.new
  end

  def edit
  end

  def update
  end

  def destroy
  end


  def posts
    @post = "postアクション実行中"
#    @user = User.find(params[:id])
    @rooms = Room.all
  end
end
