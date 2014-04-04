class WordsController < ApplicationController

  def index
    @wotd = Wordnik.words.get_word_of_the_day
    @random = Wordnik.words.get_random_word(
      includePartOfSpeech: "noun",
      minLength: 5,
      maxLength: 10
      )
    @random_definitions = Wordnik.word.get_definitions(@random["word"])
  end

end
