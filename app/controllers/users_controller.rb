class UsersController < ApplicationController
  def create
    user = User.create(user_params)
    render json: user, status: :created
  end

  private

    def user_params
      params.require(:user)
        .permit(:name, :email, :password, :password_confirmation,
          :document, :phone, :credit_card_number, :credit_card_name,
          :credit_card_cvv, :credit_card_expiration_date)
    end
end

