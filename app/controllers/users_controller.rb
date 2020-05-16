class UsersController < ApplicationController

  def index
    @user = User.all
    render json: @user, status: :ok
  end

  def create
    @user = User.create(user_params)
    render json: @user, status: :created
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if  @user.update(user_params)
      redirect_to @user
    else
      render "edit"
    end
  end

  def show
    @user = User.find(params[:id])
    render json: @user, status: :ok
  end

  private

    def user_params
      params.require(:user)
        .permit(:name, :email, :password, :password_confirmation,
          :document, :phone, :credit_card_number, :credit_card_name,
          :credit_card_cvv, :credit_card_expiration_date)
    end
end

