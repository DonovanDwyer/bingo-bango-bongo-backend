class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create, :update]

  def profile
    render json: { user: UserSerializer.new(current_user), jwt: @token }, status: :accepted
  end

  def create
    @user = User.create(
      username: user_params[:username],
      password: user_params[:password],
      bingomaster: false,
      wins: 0,
      losses: 0
    )
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(wins: user_params[:wins], losses: user_params[:losses])
    render json: { message: "success" }, status: :accepted
  end


  private
  def user_params
    params.require(:user).permit(:id, :username, :password, :bingomaster, :wins, :losses)
  end
end
