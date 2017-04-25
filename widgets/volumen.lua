--- {{{ Volume Indicator
  -- icon
    volicon = widget({ type = "imagebox" })
    volicon.image = image(beautiful.widget_vol)
    volicon.resize = false
    awful.widget.layout.margins[volicon] = { top = 2 }
 -- scale
    volwidget = widget({ type = "textbox", align = "right" })
    vicious.register(volwidget, vicious.widgets.volume, "$1", 1, "Master")
--- }}}
