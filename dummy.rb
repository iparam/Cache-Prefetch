require "rubygems"
require "sinatra"

Dir[File.join(Dir.pwd,"helpers","*.rb")].each do |file|
  require file
end

helpers do 
  include ApplicationHelper
end

get "/" do
	@page = 'index'
	@carName = ''
	@pageName = ''
	@user = ''
	erb :index	
end

get "/acura" do
	@page = 'acura'
	@carName = 'Acura'
	@pageName = 'Acura'
	@user = 'Viren Negi'
	erb :acura
end

get "/audi" do
	@page = 'audi'
	@carName = 'Audi'
	@pageName = 'Audi'
	@user = 'Viren Negi'
	erb :audi
end

get "/bmw" do
	@page = 'bmw'
	@carName = 'BMW'
	@pageName = 'British Mercedes Benz'
	@user = 'Viren Negi'
	erb :bmw
end

get "/ferrari" do
	@page = 'fait'
	@carName = 'Ferrari'
	@pageName = 'Fait'
	@user = 'Viren M Negi'
	erb :ferrari
end