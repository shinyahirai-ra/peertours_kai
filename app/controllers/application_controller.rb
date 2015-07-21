class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  private
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end

  protected

  def configure_permitted_parameters


    devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:email,:password, :password_confirmation, :name, :provider, :uid, user_image_attributes: [:id, :image, :user_id])}

    devise_parameter_sanitizer.for(:sign_in) {|u| u.permit(:email,:password, :name)}

    devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:email, :password, :password_confirmation, :current_password, :name, user_image_attributes: [:id, :image, :user_id, :_destroy])}
  end

end
