require "yaml"

def load_library(file_path)
  emoticon_file = YAML.load_file(file_path)
  result = {}


  point_to_meaning = {}
  emoticon_file.map { | meaning, emoticons |
    emoticons.map { | emoticon |
      point_to_meaning[emoticon] = meaning
    }
  }

  emoticon_pairs = []
  emoticon_pairs = emoticon_file.map { |meaning, emoticons|
    [emoticons]
    }

  point_to_English = {}
  emoticon_pairs.map { | English_emote, Japanese_emote |
    point_to_English[Japanese_emote] = English_emote
  }

  result[:get_meaning] = point_to_meaning


  result
end

def get_japanese_emoticon(file_path, emoticon)
  load_library(file_path)
end

def get_english_meaning(file_path, emoticon)
    load_library(file_path)
end
