class SessionsController < ApplicationController

  respond_to :json

  def create
    if @user = login(params[:session][:email], params[:session][:password], true)
      render json: @user
    else
      render json: {error: true}
    end
  end
end
