class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected
  def configure_permitted_parameters
    # if params["users"] && params["users"]["display_name"]
    #   params["users"].delete("display_name")
    #
    # end
    # devise_parameter_sanitizer.permit(:sign_in, keys: [:display_name])
    devise_parameter_sanitizer.sanitize(:sign_up, keys: [:display_name])
  end

end
