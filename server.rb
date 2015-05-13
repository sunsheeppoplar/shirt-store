require 'sinatra'
require_relative 'models/shirt'

set :partial_template_engine, :erb

get '/' do
  redirect('/shirts')
end

get '/shirts' do
  shirts = Shirt.all.limit(12)
  erb :index, locals: {shirts: shirts}
end

get '/shirts/search' do
  shirts = Shirt.where("#{params[:type]} like ?", "%#{params[:search]}%")
  puts shirts
  erb :results, locals: {shirts: shirts}
end

get '/shirts/admin' do
  shirts = Shirt.all
  erb :admin, locals: {shirts: shirts}
end

get '/shirts/:id/admin' do
  shirt = Shirt.find(params[:id])
  erb :edit, locals: {shirt: shirt}
end

get '/shirts/:id' do
  shirt = Shirt.find(params[:id])
  erb :show, locals: {shirt: shirt}
end

post '/shirts' do
  Shirt.create({:quantity => params[:quantity], :image => params[:image], :name => params[:name], :price => params[:price], :brand => params[:brand], :color => params[:color]})
  redirect('/shirts/admin')
end

put '/shirts/:id' do
  Shirt.find(params[:id]).update({:quantity => params[:quantity], :image => params[:image], :name => params[:name], :price => params[:price], :brand => params[:brand], :color => params[:color]})
  redirect("/shirts/#{params[:id]}/admin")
end
