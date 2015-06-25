class PinsController < ApplicationController
  before_action :set_pin, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  respond_to :html

  def index
    @pins = Pin.all
    @user = current_user.user
      end

  def show
    @pin = Pin.find params[:id]
      end

  def new
    @pin = current_user.pins.build
      end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @pin = current_user.pins.build(pin_params)
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
    def correct_user
     # @pin = current_user.pins.find(params[:id])
      @pin = current_user.pins.find_by(id: params[:id])
      redirect_to pins_path, notice: "Not authorized to edit this pin" 
    end
    def pin_params
      params.require(:pin).permit(:description)
    end
  end