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

  getcount: ->
    results = {}
    for word in @list
      process_word = (word) ->
        word = word.match(/\w+/)
      word = process_word word.toLowerCase()
      if (results[word])
        results[word]++
      else
        results[word] = 1
    @count = results

module.exports = Words
