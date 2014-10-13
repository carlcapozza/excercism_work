class Words
  constructor: (@phrase) ->
    @list = @phrase.split /\s+/
    @getcount()

  getcount: ->
    results = {}
    for word in @list
      process_word = (word) ->
        #word = word.match("[A-Za-z0-9]\w+")
        word = word.toLowerCase()
      word = process_word word
      if (results[word])
        results[word]++
      else
        results[word] = 1
    @count = results

module.exports = Words
