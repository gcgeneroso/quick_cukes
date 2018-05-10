require 'dotenv/load'
require 'byebug'
require 'rspec'
require 'page-object'
require 'data_magic'

BROWSER = Watir::Browser.new :chrome
World(PageObject::PageFactory)
