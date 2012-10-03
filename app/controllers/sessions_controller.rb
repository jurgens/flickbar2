class SessionsController < ApplicationController
  before_filter :require_login, only: [:destroy]

  respond_to :json

  def create
    if @user = login(params[:session][:email], params[:session][:password], true)
      render json: @user
    else
      render json: {error: true}, status: 404
    end
  end

  def destroy
    logout
    render json: {}
  end
end
