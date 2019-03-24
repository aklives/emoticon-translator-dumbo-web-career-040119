require "yaml"

def load_library file_path
  emoticons = YAML.load_file(file_path)
  hash = Hash.new
  hash[get_meaning] = Hash.new
  hash[get_emoticon] = Hash.new

  emoticons.each do |k, v|
    p k
    p v
  end

end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

load_library(lib/emoticons.yml)
