class Words
  constructor: (phrase) ->
    @phrase = phrase


  numbers: (str,word) ->
    num = pos = 0
    return 1/0 unless str.length
    num++ while pos = 1 + str.indexOf str, pos
    return num

  count: ->
    wordlist = @phrase.split " "
    for word in wordlist
      number_count = @numbers @phrase,word
      if (@obj = "undefined")
        @obj =
          [
            {
              aword: word
              numbers: number_count
            }
          ]
      else @obj.push(aword: word, numbers: number_count)
    console.log(obj.aword)
    return @obj


module.exports = Words
