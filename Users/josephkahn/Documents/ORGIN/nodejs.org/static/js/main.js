This reverts commit dec85fd0c52d4efdc5217f7587beea23e36eda73.
;(function () {
  'use strict'
  var osMatch = navigator.platform.match(/(Win|Mac|Linux)/)
  var os = (osMatch && osMatch[1]) || ''
  var arch = navigator.userAgent.match(/x86_64|Win64|WOW64/) ||
    navigator.cpuClass === 'x64'
    ? 'x64'
    : 'x86'
  var buttons = document.querySelectorAll('.home-downloadbutton')
  var downloadHead = document.querySelector('#home-downloadhead')
  var dlLocal
