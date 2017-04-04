class UsersController < ApplicationController
     before_action :logged_in_user, only: [:index, :edit, :update, :destroy]

   def show
    @user = User.find(params[:id])
   end

  def new
    @user = User.new
  end
  
 def create
     @user = User.new(user_params)
    if @user.save
    log_in @user
     flash[:success] = "Welcome to VibeCity!"
       redirect_to @user
     
    else
      render 'new'
    end
 end
 
 def edit
    @user = User.find(params[:id])
 end
 
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      # Handle a successful update.
    else
      render 'edit'
    end
  end


  private

   private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

    # Before filters

    # Confirms the correct user.
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    # Confirms an admin user.
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end
