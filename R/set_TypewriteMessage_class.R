#' Set TypewriteMessage Class
#' @export TypewriteMessage
#' @exportClass TypewriteMessage

TypewriteMessage <- setClass("TypewriteMessage",
                             representation(Plain = "character",
                                            Formatted = "character"),
                             prototype(Plain = NA_character_,
                                       Formatted = NA_character_))
