class DashboardController < ApplicationController
  before_action :authenticate_account!
  def index
  end

  def properties
  end

  def reports
  end
end
