class Bob
  messagetypes = [
      {name: "Bob_is_Yelled_At", value: "Whoa, chill out!", test: (message) -> (message == message.toUpperCase() and message.match("[A-Za-z]") != null)}
      {name: "Bob_is_Questioned", value: "Sure.", test: (message) -> (message.slice(-1) == "?" and message != message.toUpperCase())}
      {name: "Bob_is_Addressed", value: "Fine. Be that way!", test: (message) -> (message.match("[A-Za-z0-9]") == null)}
  ]

  hey: (message) ->
    for test in messagetypes
      if test.test(message)
        return test.value
    return "Whatever."

module.exports = ->
  bob = new Bob
