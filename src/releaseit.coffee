# Description:
#   Sometimes a person needs a squid
#
#   Set the environment variable HUBOT_SHIP_EXTRA_SQUID (to anything)
#   for additional motivation
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_SHIP_EXTRA_SQUID
#
# Commands:
#   release it - Display a motivation squid
#
# Author:
#   maddox (shipit squirrel)
#   benlivingood-wf squids

squids = [
  "http://i.imgur.com/Ky9PYgI.jpg",
  "https://s-media-cache-ak0.pinimg.com/736x/c9/28/d9/c928d9c0b11c3672f3c6516e49733d33.jpg",
  "http://i.imgur.com/8wZbcJ3.png",
  "http://i.imgur.com/mJJQr8e.png",
]

module.exports = (robot) ->

  # Enable a looser regex if environment variable is set
  if process.env.HUBOT_SHIP_EXTRA_SQUID
    regex = /\breleas(ing|e|ed)?\s*it\b/i
  else
    regex = /\brelease\s*it\b/i

  robot.hear regex, (msg) ->
    msg.send msg.random squids
