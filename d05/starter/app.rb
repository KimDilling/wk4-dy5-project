require 'sinatra'
require 'sinatra/reloader'

enable :sessions

before do 
	session[:message_text] ||= []
end


# routes
get '/index' do
 	erb :index	
end


post '/post' do
	#if less than 142 charcters then post
	
	message_text = params[:message_text]
	session[:message_text] << message_text
	@messages = session[:message_text].reverse
	
	 # session[@messages] = @new_messages
	 #how to save data from previous session


	# if message_text.length < 142 
	#  	@message_text = message_text
	#  	@messages << @message_text
	# else
	# @alert = "Error Message - Over 142 Characters"
	# end

	erb :post
end

get '/restart' do
    session.clear

    redirect '/'
end

