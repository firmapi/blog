---
---

#
# Only show Twitter alert for people that haven't closed it
#

$ ->
  if readCookie('twitter_alert') == null
    $("#twitter-alert").show()

$ ->
  $("#close-twitter-alert").click ->
    $("#twitter-alert").hide()
    createCookie("twitter_alert", "1", "60")


#
# Only show CTA header for people that haven't closed it
#

$ ->
  if readCookie('cta_header') == null
    $(".cta-header").show()

$ ->
  $("#close-cta-header").click ->
    createCookie("cta_header", "1", "15")
    $(".cta-header").hide()



#
# Twitter quotes
#

$ ->
  $(".tweet-link").tooltip()


#
# Scroll to fixed on share bar
#

$ ->
  $('.share-col').scrollToFixed({ marginTop: 20 })


#
# Functions to work with cookies
#

createCookie = (name, value, days) ->
  if days
    date = new Date()
    date.setTime date.getTime() + (days * 24 * 60 * 60 * 1000)
    expires = "; expires=" + date.toGMTString()
  else
    expires = ""
  document.cookie = name + "=" + value + expires + "; path=/"
  return

readCookie = (name) ->
  nameEQ = name + "="
  ca = document.cookie.split(";")
  i = 0

  while i < ca.length
    c = ca[i]
    c = c.substring(1, c.length)  while c.charAt(0) is " "
    return c.substring(nameEQ.length, c.length)  if c.indexOf(nameEQ) is 0
    i++
  null

eraseCookie = (name) ->
  createCookie name, "", -1
  return