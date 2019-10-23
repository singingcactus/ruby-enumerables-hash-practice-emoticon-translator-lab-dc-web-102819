require "yaml"

def load_library(file_path)
  emoticon_file = YAML.load_file(file_path)
#  puts emoticon_file

  new_container = {}
  new_file = emoticon_file.map { | meaning, emoticons |
    emoticons.map { | emoticon |
      new_countainer[emoticon] = meaning
    }
  }

  puts new_file

  result = {
    get_meaning: {


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
    load_library(file_path)
  end
end
