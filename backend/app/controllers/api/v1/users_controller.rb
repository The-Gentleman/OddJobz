class Api::V1::UsersController < ApplicationController

    def index 
        @users = User.all 
        user_json = UserSerializer.new(@users).serialized_json
        render json: user_json
    end 

    def show 
        @user = User.find(params[:id])
        user_json = UserSerializer.new(@user).serialized_json
        render json: user_json

    end 

end
