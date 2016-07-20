class PhonesController < ApplicationController 
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def input
  end

  def call
    number = params["number"]
    account_sid = ENV["TWILLIO_SID"]
    auth_token = ENV["TWILLIO_AUTH_TOKEN"]
    @client = Twilio::REST::Client.new account_sid, auth_token

    Twilio.configure do |config|
      config.account_sid = account_sid
      config.auth_token = auth_token
    end

    @client = Twilio::REST::Client.new
    @call = @client.calls.create(
      from: '+12018967139',
      to: '+1'+number,
      url: 'http://example.com/call-handler'
    )
  end 
end