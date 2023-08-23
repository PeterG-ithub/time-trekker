class AppsController < ApplicationController
  before_action :authenticate_user!
  def index
    @categories = current_user.categories
  end
end
