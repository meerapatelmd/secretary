#' Log a Typewrite Message to log.md
#' @export

log_TypewriteMessage <-
    function(TypewriteMessage_obj, disable_rstudioapi = FALSE) {
                TypewriteMessageLog_obj <- new("TypewriteMessageLog",
                                               Timestamp = Sys.time(),
                                               Message = TypewriteMessage_obj)

                if (disable_rstudioapi == FALSE) {
                            TypewriteMessageLog_obj@`R Script` <- basename(cave::present_script_path())
                }

                broca::create_log.md()
                broca::log_this(path_to_file = "",
                                activity_type = "Message",
                                function_used = TypewriteMessageLog_obj@`R Script`,
                                details = TypewriteMessageLog_obj@Message@Plain)

    }

