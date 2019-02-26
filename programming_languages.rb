def reformat_languages(languages)
  new_hash = {}
  languages.collect do |lang_style, lang_data|
    lang_data.collect do |lang, lang_types|
     new_hash[lang] = lang_types
     new_hash[lang][:style]=[]
     new_hash[lang][:style]<< lang_style
    end
  end
  new_hash[:javascript][:style] << :oo #since JS is both func & oo - it goes into the same style array 
  new_hash
end





