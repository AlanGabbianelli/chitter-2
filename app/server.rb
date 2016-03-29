class Chitter < Sinatra::Base
  register Sinatra::Flash
  register Sinatra::Partial
  use Rack::MethodOverride

  enable :sessions
  enable :partial_underscores
  set :sessions_secret, 'woobly-doobly'
  set :partial_template_engine, :erb

  get '/' do
    erb(:index)
  end

  helpers do
    def current_user
      @current_user ||= User.get(session[:user_id])
    end
  end
end
