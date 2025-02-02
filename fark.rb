# frozen_string_literal: true


  def is_an_exception?(word_to_search) 
  
    exception_words = %w[anne dahi elma hangi hani inanmak] 
  
    exception_words.include?(word_to_search)

  end
  
  def is_not_required?(word_to_search)
  
    not_required_words = %w[ahenk badem ceylan fidan gazete hamsi kestane limon model otomatik pehlivan selam tiyatro viraj ziyaret]

    not_required_words.include?(word_to_search)
  
  end
  
  # Bir kelimenin BUU' na uygun olup/olmadigini bildiren metot
  def is_harmonic?(word_to_search) 
  
    #Kontrol icin kullanilacak kalin ve ince harfler
    thick_vowels = "aıou"
    thin_vowels = "eiöü"
    
    ince_harf = false
    kalın_harf = false
    
    word_to_search.chars.each do |harf|
     kalın_harf = true if thick_vowels.include?(harf)
     ince_harf = true if thin_vowels.include?(harf)
    end

     kalın_harf && ince_harf


  
  end
  
  
   words = gets.chomp.split
  
   words.each do |word|
    if is_an_exception?(word)
        puts "#{word} : ISTSN"
        word = ""
    
    elsif is_not_required?(word)
        puts "#{word} : ARANMZ"
        word = ""
    
    elsif is_harmonic?(word)
        puts "#{word} : UYGNDGL"
    else
        puts "#{word} : UYGN"
   end
end