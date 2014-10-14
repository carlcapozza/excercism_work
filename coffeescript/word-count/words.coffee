class Words
  constructor: (@phrase) ->
    @list = @phrase.split ///
      [
        \s  # delimiter for spaces(\s)
        ,   # delimiter for commas(,)
        :   # delimiter for colon(:)
      ]
      +  # be greedy
      ///
    @getcount()

  nospecial: (words) ->
    words = words.match(/w+/)
    for word in words
      return word

  lower: (word) ->
    word.toLowerCase()

  getcount: ->
    results = {}
    for word in @list
      word = @lower (@nospecial word)
      #  lower word
      #process_word = (word) ->
      #  word = word.match(/\w+/)
      #  word = word[0].toLowerCase()
      #word = process_word word
      #word = word.match(/\w+/).toLowerCase()
      if (results[word])
        results[word]++
      else
        results[word] = 1
    @count = results

module.exports = Words
