class Words
  constructor: (@phrase) ->
    @list = @phrase.split " "
    @getcount()

  numbers: (str,word) ->
    num = pos = 0
    return 1/0 unless str.length
    num++ while pos = 1 + str.indexOf str, pos
    num

  getcount: ->
    results = {}
    for word in @list
      if (results[word])
        results[word]++
      else
        results[word] = @numbers @phrase, word
    @count = results

module.exports = Words
