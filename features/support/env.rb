require 'byebug'
require 'data_magic'
require 'dotenv/load'
require 'page-object'
require 'require_all'
require 'rspec'
require 'watir'

BROWSER = Watir::Browser.new :chrome
World(PageObject::PageFactory)

require_all 'page_objects'
