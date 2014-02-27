class ApplicationController < ActionController::Base
  protect_from_forgery

  private
  def set_cache_control_headers(max_age = 1.year.to_s)
    request.session_options[:skip] = true  # removes session data
    response.headers['Cache-Control'] = "public, max-age: #{max_age}"
    response.headers['Surrogate-Control'] = "max-age: #{max_age}"
  end

end

