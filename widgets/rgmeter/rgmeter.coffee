class Dashing.Rgmeter extends Dashing.Widget

  @accessor 'value', Dashing.AnimatedValue


  constructor: ->
    super
    @observe 'value', (value) ->
      rgmeter = $(@node).find(".meter")
      if value < 1
        color = "#00FF00"
      else
        color = "#FF0000"
      meter.val(value).trigger('configure', bgColor: color)
      meter.val(value).trigger('change')
      
     

  ready: ->
    meter = $(@node).find(".meter")
    meter.attr("data-bgcolor", meter.css("background-color"))
    meter.attr("data-fgcolor", meter.css("color"))
    meter.knob()
  
