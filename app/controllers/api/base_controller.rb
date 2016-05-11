class Api::BaseController < ApplicationController

  def malformed_request
    render json: { error: "The request could not be understood by the server due to malformed syntax.  The client SHOULD NOT repeat the request without modification.", status: 400}, status: 400
  end

  def not_found
    render json: { error: "Record not found", status: 404 }, status: 404
  end
end
