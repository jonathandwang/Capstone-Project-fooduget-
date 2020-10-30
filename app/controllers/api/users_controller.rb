class Api::UsersController < ApplicationController
  def create
    user = User.new(
      full_name: params[:full_name],
      user_name: params[:user_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if user.save
      render json: { message: "user created successfully"}, status: :created
    else 
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end 
  end 
end
