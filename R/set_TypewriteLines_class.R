#' Set the TypewriteLines Class
#' @export TypewriteLines
#' @exportClass TypewriteLines

TypewriteLines <-
    setClass("TypewriteLines",
             representation(TypewriteMessage = "TypewriteMessage",
                            "Blank Lines" = "numeric",
                            "Indents" = "numeric"))

