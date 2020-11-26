#' Set TypewriteMessage Class
#' @noRd
#' @export TypewriteMessage
#' @exportClass TypewriteMessage

TypewriteMessage <- setClass("TypewriteMessage",
                             representation(Plain = "character",
                                            Formatted = "character"),
                             prototype(Plain = NA_character_,
                                       Formatted = NA_character_))


#' Set the TypewriteLines Class
#' @export TypewriteLines
#' @exportClass TypewriteLines

TypewriteLines <-
    setClass("TypewriteLines",
             representation(TypewriteMessage = "TypewriteMessage",
                            "Blank Lines" = "numeric",
                            "Indents" = "numeric"))


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

