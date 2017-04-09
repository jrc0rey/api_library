class LibraryController < ApplicationController

get '/utilities' do
	erb :utilities
end

get '/utilities/apis' do
	content_type :json
	@api = Api.all
	@api.to_json
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
	@media = Api.all
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
	@design = Api.all
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







end