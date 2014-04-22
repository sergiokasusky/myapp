class WelcomeController < ApplicationController
  def index
    @providers = Provider.all
  end
end
