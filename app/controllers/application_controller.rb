class ApplicationController < ActionController::Base

  protect_from_forgery
  check_authorization unless: :devise_controller?
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
  	# ,:secret_code_attributes =>  :secret_code 
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name,:last_name,:secret_cod])
  end

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { head :forbidden, content_type: 'text/html' }
      format.html { redirect_to main_app.root_url, notice: exception.message }
      format.js   { head :forbidden, content_type: 'text/html' }
  	end
  end

end
