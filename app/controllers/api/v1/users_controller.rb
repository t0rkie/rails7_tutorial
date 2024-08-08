module Api
  module V1
    class UsersController < ApplicationController
      protect_from_forgery with: :null_session

      def show
        @user = User.find(params[:id])
        render json: { name: @user.name, email: @user.email}
      end
    end
  end
end
