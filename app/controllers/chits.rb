require 'haml'

class Chitter < Sinatra::Base
  post '/create_chit' do
    chit = Chit.create(chit_text: params[:chit_text],
                       chit_time: Time.now.strftime("%d %b at %H:%M"),
                       user_id: params[:user_id])
    chit.save
    redirect '/chits'
  end

  get '/chits' do
    @chits = Chit.all.reverse
    haml :chits
  end
end
