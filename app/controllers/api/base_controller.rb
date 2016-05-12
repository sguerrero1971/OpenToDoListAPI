class Api::BaseController < ApplicationController

  skip_before_action :verify_authenticity_token

  def malformed_request
    render json: { error: "The request could not be understood by the server due to malformed syntax.  The client SHOULD NOT repeat the request without modification.", status: 400}, status: 400
  end

  def not_found
    render json: { error: "Record not found", status: 404 }, status: 404
  end

  private

  def authenticated?
    authenticate_or_request_with_http_basic { |name, password| User.where( name: name, password: password).present? }
  end

end
