class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def new
    @pins = current_user.pins.build
   # @user = User.find(1)
   # @event = Event.new
  end

  def create
    @user = current_user.pins.build(pin_params)
    if @user.save
      flash[:notice] = 'You signed up successfully'
      flash[:color] = 'valid'
      redirect_to action: 'index'
    else
      flash[:alert] = 'You have not signed up successfully'
      flash[:color] = 'invalid'
      redirect_to action: 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    #@user = User.find(params[:id])
    if @user.update_attributes(users_params)
      flash[:notice] = 'Your data is updated succesfully'
      flash[:color] = 'valid'
      redirect_to action: 'show'
    else
      flash[:alert] = 'Your data could not update,Please check it..!!'
      flash[:color] = 'invalid'
      redirect_to action: 'edit'
    end
  end

  private
  def users_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end

#config/routes.rb:
