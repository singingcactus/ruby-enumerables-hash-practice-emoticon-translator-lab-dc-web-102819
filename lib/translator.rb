require "yaml"

def load_library(file_path)
  emoticon_file = YAML.load_file(file_path)
#  puts emoticon_file
  result = {
    get_meaning: {
      emoticon_file.select { |meaning,result_array|
          result_array[1]
      }
     },
    get_emoticon: {
     }
  }


  result
end

def get_japanese_emoticon(file_path, emoticon)
  load_library(file_path)
end

def get_english_meaning(file_path, emoticon)
  if load_library(file_path) == nil
    return "We're sorry, we cannot find the emoticon"
  else
    load_library(file_path)
  end
end
