require 'bundler'
Bundler.require
require_all 'lib'
require_all 'bin'
ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')

ActiveRecord::Base.logger = nil

