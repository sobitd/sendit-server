class ParcelsController < ApplicationController
  def index
    render json: Parcel.all, status: :ok
  end

  def show
    render json: finder, status: :ok
  end

  def create
    parcel = Parcel.create(params)
    render json: parcel, status: :created
  end

  def update
    parcel = finder
    parcel.update(params)
    render json: parcel, status: :ok
  end

  def destroy
    find_params.destroy
    head :no_content
  end

  private

  def finder
    Parcel.find(params[:id])
  end

  def params
    params.permit(
      :recipient_name,
      :recipient_address,
      :recipient_contact,
      :weight,
      :from,
      :destination,
      :user_id
    )
  end
end
