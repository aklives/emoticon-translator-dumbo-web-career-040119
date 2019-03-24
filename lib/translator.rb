require "yaml"
require 'pry'

def load_library file_path
  emoticons = YAML.load_file(file_path)
  hash = Hash.new
  hash[get_meaning] = Hash.new
  hash[get_emoticon] = Hash.new

  emoticons.each do |k, v|
    'binding.pry'
  end

end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end


