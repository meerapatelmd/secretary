#' Set TypewriteMessageLog Class
#' @export TypewriteMessageLog
#' @exportClass TypewriteMessageLog

TypewriteMessageLog <-
    setClass("TypewriteMessageLog",
             representation(Timestamp = "character",
                            "R Script" = "character",
                            Message = "TypewriteMessage",
                            Error = "character"
                            ),
             prototype("R Script" = NA_character_,
                    Error = NA_character_))

