--- {{{ OS info
       sys = widget({ type= "textbox" })
       sysicon = widget({type = "imagebox" })
      sysicon.image = image(beautiful.widget_sys)
      sysicon.resize = false
      vicious.register(sys, vicious.widgets.os, "$1 $2")
--- }}}
