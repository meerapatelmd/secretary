




spinner_sleep <-
        function(sec,
                 which = NULL,
                 stream = "auto",
                 template = "{spin}",
                 static = c("dots", "print", "print_line", "silent")) {

                sp <- cli::make_spinner(which = which,
                                        stream = stream,
                                        template = template,
                                        static = static)
                lapply(1:sec, function(x) { sp$spin(); Sys.sleep(1) })
                sp$finish()
        }
