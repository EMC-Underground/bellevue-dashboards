class Dashing.Meter extends Dashing.Widget

  @accessor 'value', Dashing.AnimatedValue


  constructor: ->
    super
    @observe 'value', (value) ->
      meter = $(@node).find(".meter")
      ###
      if value < 1
        color = "#00FF00"
      else
        color = "#FF0000"
      meter.val(value).trigger('configure', fgColor: color)
      ###
      meter.val(value).trigger('change')
     

  ready: ->
    meter = $(@node).find(".meter")
    meter.attr("data-bgcolor", meter.css("background-color"))
    meter.attr("data-fgcolor", meter.css("color"))
    meter.knob()
  
