get '/history' do
  @user = User.find(current_user)
  @rounds = @user.rounds
  erb :rounds
end

post '/increment_counter' do
  if current_user
    round = Round.where(:user_id => session[:user_id], :deck_id => params[:deck_id])
    round.first.bad += 1 if params[:pressed] == 'bad'
    round.first.ok += 1 if params[:pressed] == 'ok'
    round.first.good += 1 if params[:pressed] == 'good'
    round.first.save
  end
end
