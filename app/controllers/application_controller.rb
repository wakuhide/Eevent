class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :configure_permitted_parameters, if: :devise_controller?

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up).push(:family_name, :first_name, :family_name_kana, :first_name_kana, :sex, :prefecture_id, :city, :job, :marital, :TEL)
    end
  protect_from_forgery with: :exception
end
