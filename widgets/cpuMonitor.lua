-- {{{ CPU
  -- Core Temp
    tempwidget = widget({ type = "textbox" })
    vicious.register(tempwidget, vicious.widgets.thermal, "$1 C", 5, "thermal_zone0")
 -- Icon
    tempicon = widget({type = "imagebox" })
    tempicon.image = image(beautiful.widget_temp)
-- Readout
  -- Icon
    cpuicon = widget({ type = "imagebox" })
    cpuicon.image = image(beautiful.widget_cpu)
    cpuicon.resize = false
    awful.widget.layout.margins[cpuicon] = { top = 3 }
  -- Percentage
    cpu1 = widget({ type = "textbox" })
    vicious.register(cpu1, vicious.widgets.cpu, "(1): $1%")
    cpu2 = widget ({ type = "textbox" })
    vicious.register(cpu2, vicious.widgets.cpu, "(2): $2%")
  -- CPU1 Meter
    cpubar = awful.widget.progressbar()
    cpubar:set_width(44)
    cpubar:set_height(9)
    cpubar:set_vertical(false)
    cpubar:set_background_color("#3F3F3F")
    cpubar:set_color("#ff6565" )
    vicious.register(cpubar, vicious.widgets.cpu, "$1", 7)
  -- CPU2 Meter
    cpubar2 = awful.widget.progressbar()
    cpubar2:set_width(44)
    cpubar2:set_height(9)
    cpubar2:set_vertical(false)
    cpubar2:set_background_color("#3F3F3F")
    cpubar2:set_color("#ff6565" )
    vicious.register(cpubar2, vicious.widgets.cpu, "$2", 7)
  -- Align progressbars
    awful.widget.layout.margins[cpubar.widget] = { top = 4 }
    awful.widget.layout.margins[cpubar2.widget] = { top = 4 }
  -- Frequency
    --freq1 = widget({ type = "textbox" })
    --vicious.register(freq1, vicious.widgets.cpufreq, "$2 Ghz", 9, "cpu0")
    --freq2 = widget({ type = "textbox" })
    --vicious.register(freq2, vicious.widgets.cpufreq, "$2 Ghz", 9, "cpu1")
  -- Cache that shit
    vicious.cache(vicious.widgets.cpu)
--- }}}
