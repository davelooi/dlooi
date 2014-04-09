class WordsController < ApplicationController

  def index
    @wotd = Wordnik.words.get_word_of_the_day
  end
  
  def hangman
    @word = Wordnik.words.get_random_word(
      includePartOfSpeech: "noun",
      minLength: 5,
      maxLength: 10
      )
    @caWord = @word["word"].upcase.split(//)
  end

end
