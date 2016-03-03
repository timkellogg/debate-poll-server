class ApplicationController < ActionController::API
  before_filter :add_allow_credentials_headers
  
  # TODO: Insecure!
  # Replace with: https://github.com/cyu/rack-cors
  def add_allow_credentials_headers
    response.headers['Access-Control-Allow-Origin'] = request.headers['Origin'] || 'localhost'                                                                                                                                                                                       
    response.headers['Access-Control-Allow-Credentials'] = 'true'  
  end
  
end
