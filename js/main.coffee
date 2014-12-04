---
---

url = document.URL

$.getJSON "http://urls.api.twitter.com/1/urls/count.json?url=#{url}&callback=?", (json) ->
  setCount $(".twCount"), json.count

$.getJSON "http://graph.facebook.com/#{url}", (json) ->
  setCount $(".fbCount"), json.shares

$.getJSON "http://www.linkedin.com/countserv/count/share?url=#{url}&callback=?", (json) ->
  setCount $(".liCount"), json.count

countUp = ($item) ->
  setTimeout () ->
    current = $item.attr("data-current-count") * 1
    target = $item.attr("data-target-count") * 1
    newCount = current + Math.ceil (target - current) / 2
    $item.attr "data-current-count", newCount
    $item.html newCount
    countUp $item if newCount < target
  , 100

setCount = ($item, count = null) ->
  $item.attr "data-target-count", count
  $item.attr "data-current-count", 0
  countUp $item


#
# Only show Twitter alert for people that haven't closed it
#

$ ->
  if readCookie('twitter_alert') == null
    $("#twitter-alert").show()

$ ->
  $("#close-twitter-alert").click ->
    createCookie("twitter_alert", "1", "60")
    $("#twitter-alert").hide()


#
# Twitter quotes
#

$ ->
  $(".tweet-link").tooltip()


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