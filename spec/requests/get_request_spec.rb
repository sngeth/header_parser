require 'rails_helper'

RSpec.describe "GET request", type: :request do
  it "returns the IP address, language and operating system for user's browser" do
    get '/api/whoami'
    expect(response).to have_http_status :success
  end
end
