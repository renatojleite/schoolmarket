class OffersController < ApplicationController
  before_action :set_offer, only [:show, :update]

  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new
  end

  def show
  end

  def edit
  end

  def create

    offer = Offer.create(offer_params)
    redirect_to offer_path(offer)

    # @offer = Offer.new(offer_params)

    # respond_to do |format|
    #   if @offer.save
    #     format.html { redirect_to @offer, notice: 'Offer was successfully created.' }
    #     format.json { render :show, status: :created, location: @offer }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @offer.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  def update
    @offer.update(offer_params)
    redirect_to offer_path(@offer)

    # respond_to do |format|
    #   if @offer.update(offer_params)
    #     format.html { redirect_to @offer, notice: 'offer was successfully updated.' }
    #     format.json { head :no_content }
    #   else
    #     format.html { render action: 'edit' }
    #     format.json { render json: @offer.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:name, :description, :price)
  end
end

