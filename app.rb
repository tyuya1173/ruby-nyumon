require 'sinatra'

get '/' do
    'Hello, World!'
end

require './db/todos'
get '/todos' do
    rows = DB.execute('SELECT * FROM todos')
    @todos = rows.map { |row| row[1] }
    erb :todos
end