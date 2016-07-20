class PhonesController < ApplicationController 
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def input

  end

  def call
    # put your own credentials here
    account_sid = ENV["TWILLIO_SID"]
    auth_token = ENV["TWILLIO_AUTH_TOKEN"]

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token

    # alternatively, you can preconfigure the client like so
    Twilio.configure do |config|
      config.account_sid = account_sid
      config.auth_token = auth_token
    end

    # and then you can create a new client without parameters
    @client = Twilio::REST::Client.new

    # make a new outgoing call
    @call = @client.calls.create(
      from: '+12018967139',
      to: '+12672593661',
      url: 'http://example.com/call-handler'
    )
  end 

end