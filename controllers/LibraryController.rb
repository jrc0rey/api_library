class LibraryController < ApplicationController

get '/apis' do
	content_type :json
	@api = Api.all
	@api.to_json
end

get '/utilities' do
	@utilityLink = Api.where(category: :Utilities).pluck(:link)
	@utilityDescrip = Api.where(category: :Utilities).pluck(:description)
	erb :utilities
end

get '/utilities/apis' do
	content_type :json
	@utility = Api.where(category: :Utilities).pluck(:link, :description)
	@utility.to_json
end

post '/utilities/apis' do
	content_type :json
	@utility = Api.new
	@utility.link = params[:link]
	@utility.description = params[:description]
	@utility.category = params[:category]
	@utility.save
	@utility.to_json
end

patch '/utilities/apis/:id' do
	content_type :json
	@utility = Api.find_by_id(params[:id])
	@utility.link = params[:link]
	@utility.description = params[:description]
	@utility.category = params[:category]
	@utility.save
	@utility.to_json
end

get '/media' do
	erb :media
end

get '/media/apis' do
	content_type :json
	@media = Api.where(category: :Media).pluck(:link)
	@media.to_json
end

post '/media/apis' do
	content_type :json
	@media = Api.new
	@media.link = params[:link]
	@media.description = params[:description]
	@media.category = params[:category]
	@media.save
	@media.to_json
end

patch '/media/apis/:id' do
	content_type :json
	@media = Api.find_by_id(params[:id])
	@media.link = params[:link]
	@media.description = params[:description]
	@media.category = params[:category]
	@media.save
	@media.to_json
end

get '/design' do
	erb :design
end

get '/design/apis' do
	content_type :json
	@design = Api.where(category: :Design).pluck(:link)
	@design.to_json
end

post '/design/apis' do
	content_type :json
	@design = Api.new
	@design.link = params[:link]
	@design.description = params[:description]
	@design.category = params[:category]
	@design.save
	@design.to_json
end

patch '/design/apis/:id' do
	content_type :json
	@design = Api.find_by_id(params[:id])
	@design.link = params[:link]
	@design.description = params[:description]
	@design.category = params[:category]
	@design.save
	@design.to_json
end

get '/fun' do
	erb :for_fun
end

get '/fun/apis' do
	content_type :json
	@fun = Api.where(category: :Fun).pluck(:link)
	@fun.to_json
end

post '/fun/apis' do
	content_type :json
	@fun = Api.new
	@fun.link = params[:link]
	@fun.description = params[:description]
	@fun.category = params[:category]
	@fun.save
	@fun.to_json
end

patch '/fun/apis/:id' do
	content_type :json
	@fun = Api.find_by_id(params[:id])
	@fun.link = params[:link]
	@fun.description = params[:description]
	@fun.category = params[:category]
	@fun.save
	@fun.to_json
end








end