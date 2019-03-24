require "yaml"
require 'pry'

def load_library file_path
  emoticons = YAML.load_file(file_path)
  hash = Hash.new
  hash["get_emoticon"] = Hash.new
  hash["get_meaning"] = Hash.new

  emoticons.each do |word, emo_array|
    hash["get_emoticon"][emo_array.first] = emo_array.last
    hash["get_meaning"][emo_array.last] = word
  end
hash
end

def get_japanese_emoticon yaml_path, emoticon
  hash = load_library(yaml_path)
  result = hash["get_emoticon"][emoticon]
  if result == nil
    result = "Sorry, that emoticon was not found"
  end
result
end




def get_english_meaning
  # code goes here
end
