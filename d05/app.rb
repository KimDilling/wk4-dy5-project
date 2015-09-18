require 'sinatra'
require 'sinatra/reloader'

enable :sessions

before do 

end


# routes
get '/' do
 	"hello"
	erb :index
end

get '/' do
	"goodbye"
	erb :post
end
