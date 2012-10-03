class HomeController < ApplicationController

  def index

  end

  def header
    render partial: "layouts/header"
  end
end
