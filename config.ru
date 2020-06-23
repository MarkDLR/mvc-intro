require_relative './config/environment'
use ApplicationController
use Rack::MethodOverride
run Sinatra::Application