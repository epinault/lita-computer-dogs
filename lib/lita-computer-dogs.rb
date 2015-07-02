require "lita"
require 'curb'
require 'nokogiri'

Lita.load_locales Dir[File.expand_path(
  File.join("..", "..", "locales", "*.yml"), __FILE__
)]

require "lita/handlers/computer_dogs"

Lita::Handlers::ComputerDogs.template_root File.expand_path(
  File.join("..", "..", "templates"),
 __FILE__
)
