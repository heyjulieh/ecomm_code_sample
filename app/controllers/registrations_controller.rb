class RegistrationsController < Devise::RegistrationsController

  def new
    super
  end

  # def create
  #   @user = User.new(params[:user])
  #   if @user.save
  #     current_user.move_to(@user) if current_user && current_user.guest?
  #     sign_up("user", @user)
  #     redirect_to root_path
  #   else
  #     render :new
  #   end
  # end

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :birthday, :email, :phone, :street_address, :city_address, :state, :zip_code, :country, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :birthday, :email, :phone, :street_address, :city_address, :state, :zip_code, :country, :password, :password_confirmation, :current_password)
  end
  def birthday
    @month = :birthday.strftime("B");
    @day = :birthday.strftime("d");
    @year = :birthday.strftime("Y");
  end
  def popular
    @popular = Instagram.user_recent_media
  end
end
