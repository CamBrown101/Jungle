class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: "Jungle", password: "book", include: :show
  def show
  end
end
