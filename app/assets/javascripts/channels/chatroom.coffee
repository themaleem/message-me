App.chatroom = App.cable.subscriptions.create "ChatroomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  # receives data from message#create action
  #  ActionCable.server.broadcast
  received: (data) ->
    $('#message-container').append(data.new_message)
    scroll_bottom();