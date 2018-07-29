class ApplicationController < ActionController::Base

    private
    private

  def current_user
    @current_user ||= Customer.find(session[:customer_id]) if session[:customer_id]
  end

  helper_method :current_user
end
