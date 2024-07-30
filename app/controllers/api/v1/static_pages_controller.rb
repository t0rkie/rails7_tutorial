module Api
  module V1
    class StaticPagesController < ApplicationController
      protect_from_forgery with: :null_session  # CSRF対策を無効化（APIの場合は一般的）

      def home
        render json: { message: "hi, i'm home" }
      end
    end
  end
end
