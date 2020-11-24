class PagesController < ApplicationController
  def home
    @freelancers = User.all
  end
end
