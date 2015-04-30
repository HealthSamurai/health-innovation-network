# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# compiled file.
#
# Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
# about supported directives.
#
#= require jquery
#= require jquery_ujs
#= require turbolinks
#= require bootstrap-sprockets
#= require jquery.nav
$ ->
  setTimeout((-> $('.animate-remove').hide('slow')), 5000)

  $('#avatar').on 'change', (ev)->
    file = ev.target.files[0]
    return unless file
    reader = new FileReader()
    reader.onload =  (e)->
      $('#avatar-preview').attr('src', e.target.result)
    reader.readAsDataURL(file)

  $('#image-input').on 'change', (ev)->
    file = ev.target.files[0]
    return unless file
    reader = new FileReader()
    reader.onload =  (e)->
      $('#story-image').attr('src', e.target.result)
    reader.readAsDataURL(file)
