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
    # code goes here
  output = ""
  apology = "Sorry, that emoticon was not found"
  libaray = load_library(path)
  libaray.each do |m,v|
    if emoticon == v[:english]
      output = v[:japanese]
    end
    if output == ""
      output = apology
    end
  #binding.pry
end
output
end

def get_english_meaning(path,emoticon)
  # code goes here
  output = ""
  apology = "Sorry, that emoticon was not found"
  libaray = load_library(path)
  libaray.each do |m,v|
    if emoticon == v[:japanese]
      output = m
    end
    if output == ""
      output = apology
    end
end
output
  # code goes here
end