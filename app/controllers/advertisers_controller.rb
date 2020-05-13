class AdvertisersController < ApplicationController
  def create
    advertiser = Advertiser.create(advertiser_params)
    render json: advertiser, status: :created
  end

  private

    def advertiser_params
      params.require(:advertiser)
        .permit(:name, :email, :password, :password_confirmation,
          :document, :phone, :agency, :account_number, :bank_name, :account_type)
    end
end

