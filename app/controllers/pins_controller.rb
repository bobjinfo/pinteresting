class PinsController < ApplicationController
  before_action :set_pin, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pins = Pin.all
      end

  def show
    @pin = Pin.find params[:id]
      end

  def new
    @pin = current_user.pins.build
      end

  def edit
  end

  def create
    @pin = Pin.new(pin_params)
    @pin.user_id = current_user.id
    if @pin.save
      redirect_to @pin, notice: 'Pin was successfully created'
    else
      render action: 'new'
  end
end
  def update
   if @pin.update(pin_params)
    redirect_to @pin, notice: 'Pin was successfully updated'
  else
    render action: 'edit'
  end
  end

  def destroy
    @pin.destroy
     redirect_to_pins_url
  
    end

  private
    def set_pin
      @pin = Pin.find(params[:id])
    end

    def pin_params
      params.require(:pin).permit(:description)
    end
end
