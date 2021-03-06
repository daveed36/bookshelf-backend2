# Load the Rails application.
require_relative 'application'
require 'dotenv'

# Initialize the Rails application.
Rails.application.initialize!
Dotenv.load(Rails.root.join('.env'))