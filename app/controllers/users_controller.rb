class UsersController < ApplicationController
#  def show
#  end

# private

#    def set_user
#      @user = User.find([:id])
#    end

#  before_action :authenticate_user!, only: [:mypage]
#  before_action :set_user, only: [:show]

#    def mypage
#      redirect_to user_path(current_user)
#    end

  def account
    @account = "accountアクション実行中😀"
  end

  def profile
    @profile = "profileアクション実行中☆"
  end

end
