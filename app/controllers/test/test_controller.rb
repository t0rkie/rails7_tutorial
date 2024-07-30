module Test # this works!
  class TestController < ApplicationController
    protect_from_forgery with: :null_session

    def index
      render json: { message: "hi, i'm test" }
    end

  end
end
