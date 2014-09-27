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
