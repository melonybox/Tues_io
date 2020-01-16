class UsersController < ApplicationController

    def index
      if @logged_in_user != nil
        redirect_to @logged_in_user
      end
    end


    def new
        @user = User.new
    end

    def show
      if @logged_in_user.id != User.find(params[:id]).id
        redirect_to user_path(@logged_in_user)
      end
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            log_in_user(@user.id)
            redirect_to @user
        else
            render :new
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end

end
