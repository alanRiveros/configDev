-- {{{ Filesystem info
-- Home Icons
fshomeicon = widget({ type = "imagebox" })
fshomeicon.image = image(beautiful.widget_fshome)
fshomeicon.resize = false
awful.widget.layout.margins[fshomeicon] = { top = 2 }
-- Root icon
fsrooticon = widget({ type = "imagebox" })
fsrooticon.image = image(beautiful.widget_fsroot)
fsrooticon.resize = false
awful.widget.layout.margins[fsrooticon] = { top = 2 }
-- Remaining
fsh = widget({ type = "textbox" })
vicious.register(fsh, vicious.widgets.fs, "${/home avail_gb}GB", 599)
fsr = widget({ type = "textbox" })
vicious.register(fsr, vicious.widgets.fs, "${/ avail_gb}GB", 599)
-- Home Meter
fshbar = awful.widget.progressbar()
fshbar:set_width(44)
fshbar:set_height(9)
fshbar:set_vertical(false)
fshbar:set_background_color("#3F3F3F")
fshbar:set_color("#ff6565" )
vicious.register(fshbar, vicious.widgets.fs, "${/home used_p}", 1501)
-- Root Meter
fsrbar = awful.widget.progressbar()
fsrbar:set_width(44)
fsrbar:set_height(9)
fsrbar:set_vertical(false)
fsrbar:set_background_color("#3F3F3F")
fsrbar:set_color("#ff6565" )
vicious.register(fsrbar, vicious.widgets.fs, "${/home used_p}", 1501)
-- Align progressbars
awful.widget.layout.margins[fshbar.widget] = { top = 4 }
awful.widget.layout.margins[fsrbar.widget] = { top = 4 }
-- Cache that shit
vicious.cache(vicious.widgets.fs)
-- }}}
