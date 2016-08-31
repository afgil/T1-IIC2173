class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :save_request

  def save_request
    puts "IP: #{request.env['REMOTE_ADDR']}"
    r = Request.create(ip: request.remote_ip, date: DateTime.now)


  end
end
