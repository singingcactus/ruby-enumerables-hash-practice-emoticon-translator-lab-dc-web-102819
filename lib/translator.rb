require "yaml"

def load_library(file_path)
  emoticon_file = YAML.load_file(file_path)

  point_to_meaning = {}
  emoticon_file.map { | meaning, emoticons |
    emoticons.map { | emoticon |
      point_to_meaning[emoticon] = meaning
    }
  }

  result = {
    get_meaning: {
      point_to_meaning.reduce({})
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
