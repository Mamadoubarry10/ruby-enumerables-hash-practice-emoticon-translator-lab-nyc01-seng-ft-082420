# require modules here

def load_library
    # code goes here
  data = YAML.load_file(file)
  result = data.each_with_object({}) do |(icon, value),final_hash|
    if !final_hash[icon]
      final_hash[icon]= {
        :english => value[0], 
        :japanese => value[1]
      }
    end
  result
end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end