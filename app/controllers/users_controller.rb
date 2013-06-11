post '/signup' do
  @user = User.create(:username => params[:username], 
                      :email => params[:email], 
                      :password => params[:password])
  login(@user)
end


post '/login' do
  user = User.find_by_username(params[:username])  
  puts "User object: #{user.inspect}"
  login(user)
end

get '/logout' do 
  session.clear
  redirect '/'
end

# session[:user_id] = id

# get '/homepage' do
#   if session[:user_id].nil?
#     redirect to '/'
#   else
#     erb :home_page
#   end
# end

# get '/logout' do
#   session.clear
#   redirect to '/'
# end
