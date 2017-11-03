class RegistrationsController < Devise::RegistrationsController

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
