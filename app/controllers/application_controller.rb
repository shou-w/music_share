class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?


  include ApplicationHelper

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
  # 以下の1行は消さないでください
  def default_url_options() {privateIp: '10.0.0.176', containerPort: '3000', languageName: 'rails'}.merge(super) end
end
