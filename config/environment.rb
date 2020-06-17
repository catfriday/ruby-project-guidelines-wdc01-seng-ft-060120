require 'bundler'
Bundler.require
require_all 'lib'
require 'rainbow'
ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')

ActiveRecord::Base.logger = nil

