require 'sinatra'
require 'sinatra/reloader'
require 'haml'
require 'sass'
require 'coffee-script'

def pipe(command)
  stream do |out|
    IO.popen(command) do |io|
      io.each do |s|
        out << s
      end
    end
  end
end

get '/ping' do
  content_type :txt
  pipe "rake api:ping"
end

get '/' do
  haml :index
end

get %r{^/(.*)\.html$} do
  haml :"#{ params[:captures].first }"
end

get %r{^/(css|js)/(.*)\.(css|js)$} do
  dir = params[:captures][0]
  file = params[:captures][1]
  method = params[:captures][2] == 'css' ? :scss : :coffee
  send(method, :"#{ dir }/#{ file }")
end
