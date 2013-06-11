get '/' do
  @deck = Deck.all
  erb :index
end

get '/deck/:id' do
  @deck = Deck.find(params[:id])
  @card = @deck.cards.first
  if current_user
    @round = Round.create(:deck_id => @deck.id,
                          :user_id => session[:user_id])
  end
  erb :card
end 

post '/card' do
  @card = Deck.find(1).cards.sample
  erb :_card, layout: false
end
