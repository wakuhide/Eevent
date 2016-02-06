class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def mypage
    @user = User.find(params[:user_id])
  end

  def edit
  end

  def create
    User.create(create_params)
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        # 保存後にUserMailerを使用してwelcomeメールを送信
        UserMailer.welcome_email(@user).deliver_later

        format.html { redirect_to(@user, notice: 'ユーザーが正常に作成されました。') }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    current_user.update(update_params)
  end

  private
  def update_params
    params.require(:user).permit(:family_name, :first_name, :family_name_kana, :first_name_kana, :sex, :prefecture_id, :city, :job, :marital, :TEL, :status, :birth_date)
  end

  def birth_date_params
    # params.require(:user).permit(:birth_date(1i), :birth_date(2i), :birth_date(3i))
  end

  def create_params
    params.require(:user).permit(:family_name, :first_name, :family_name_kana, :first_name_kana, :sex, :prefecture_id, :city, :job, :marital, :TEL, :status, :birth_date)
  end
end
