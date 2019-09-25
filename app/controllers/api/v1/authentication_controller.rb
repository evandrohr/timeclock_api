class Api::V1::AuthenticationController < ApplicationController
  skip_before_action :authenticate_request
 
  def authenticate
    command = AuthenticateUser.call(params[:email], params[:password])
 
    if command.success?
      @user = User.where(email: params[:email]).first
      render json: { auth_token: command.result, user_id: @user.id, user_name: @user.name }
    else
      render json: { error: command.errors }, status: :unauthorized
    end
  end
 end