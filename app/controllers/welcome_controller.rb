class WelcomeController < ApplicationController
  def index
    render :text => 'hello world'
  end
end
