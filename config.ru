require 'sinatra/base'

require './controllers/ApplicationController'
require './controllers/HomeController'
require './controllers/LibraryController'

require './models/ApiModel'



map ('/') {run ApplicationController}
map ('/home') {run HomeController}
map ('/library') {run LibraryController}