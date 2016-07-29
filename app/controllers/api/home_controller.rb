class Api::HomeController < ApplicationController
  def index
    render json: {
    ip_address: ip_address,
    language: language,
    software: software}.as_json
  end

  private
  def ip_address
    request.remote_ip
  end

  def language
    request.env['HTTP_ACCEPT_LANGUAGE']
  end

  def software
    request.env['HTTP_USER_AGENT']
  end
end
