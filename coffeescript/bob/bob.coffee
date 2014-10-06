class Bob
  messagetypes = [
      #Bob is yelled at
      {value: "Whoa, chill out!", test: (message) -> (message == message.toUpperCase() and message.match("[A-Za-z]") != null)}
      #Bob is questioned
      {value: "Sure.", test: (message) -> (message.slice(-1) == "?" and message != message.toUpperCase())}
      #Bob is addressed with no text
      {value: "Fine. Be that way!", test: (message) -> (message.match("[A-Za-z0-9]") == null)}
  ]

  hey: (message) ->
    for test in messagetypes
      if test.test(message)
        return test.value
    return "Whatever."

module.exports = ->
  bob = new Bob
