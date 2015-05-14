class ApplicationController < ActionController::API
  include ActionController::MimeResponds
  include ActionController::ImplicitRender
  respond_to :json



  def protect_against_forgery?
        false
   end
end
