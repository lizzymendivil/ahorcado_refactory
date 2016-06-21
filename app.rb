require 'sinatra'
require 'better_errors'

configure :development do
 use BetterErrors::Middleware
 BetterErrors.application_root = __dir__
end

get '/' do
    
end
