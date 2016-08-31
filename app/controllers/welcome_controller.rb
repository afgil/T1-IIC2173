class WelcomeController < ApplicationController
  def index
    @requests = Request.order('created_at DESC').limit(10)
  end
end
