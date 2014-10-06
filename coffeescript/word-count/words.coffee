class Words
  constructor: (@phrase) ->
    @list = @phrase.split " "

  numbers: (str,word) ->
    num = pos = 0
    return 1/0 unless str.length
    num++ while pos = 1 + str.indexOf str, pos
    return num

  count: ->
    for word in @list
      numbercount = @numbers @phrase, word
      if (@results)
        @results.push(theword: word, thenumber: numbercount)
      else
        @results =[
          theword: word
          thenumber: numbercount
        ]
    @results

module.exports = Words
