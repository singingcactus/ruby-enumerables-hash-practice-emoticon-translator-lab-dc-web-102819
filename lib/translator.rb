require "yaml"

def load_library(file_path)
  result = {
    get_meaning: { },
    get_emoticon: { }
  }


  result
end

def get_japanese_emoticon(file_path, emoticon)
  load_library(file_path)
end

def get_english_meaning(file_path, emoticon)
  load_library(file_path)
end
