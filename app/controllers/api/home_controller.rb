class Api::HomeController < ApplicationController
  def index
    render json: {status: :success}.as_json
  end
end
