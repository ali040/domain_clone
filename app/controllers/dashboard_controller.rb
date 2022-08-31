class DashboardController < ApplicationController
  before_action :authenticate_account!
  before_action :set_sidebar
  def index
  end

  def properties
  end

  def reports
  end
end

private

def set_sidebar
  @show_sidebar = true
end
