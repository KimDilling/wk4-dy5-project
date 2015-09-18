require 'sinatra'
require 'sinatra/reloader'

enable :sessions

#before do 

#end


# routes
get '/' do
 	#link the form

erb :index	
end


# post '/post' do
# 	#{if less than 142 charcters then post}
# 	@messages = [gets.chomp]
# 	 if messages.length < 142 do
# 	 	submit
# 	 end
	
# 	# else
# 	# 	submit "Error Message - Over 142 Characters"
# 	# end

# 	#erb :post
# end

