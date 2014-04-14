class WordsController < ApplicationController

  def index
    @wotd = Wordnik.words.get_word_of_the_day
  end
  
  def hangman
  end
  
  def getRandomWord
    @word = Wordnik.words.get_random_word(
      includePartOfSpeech: "noun",
      minLength: 5,
      maxLength: 10
      )
    if request.xhr?
      render :json => @word
    end
  end

end
