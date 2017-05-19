# frozen_string_literal: true

# Aplikacni controller
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :require_login

  helper_method :current_users_list

  protected

  def current_users_list
    current_users.map(&:username).join(', ')
  end

  private

  def not_authenticated
    redirect_to login_path, alert: 'Please login first'
  end
end
