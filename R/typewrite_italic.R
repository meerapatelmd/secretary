#' Returns a phrase with formatting
#' @param ... words in the phrase
#' @param tabs number of tab spacing desired. defaults to 1.
#' @param line_number number of lines wanted after the phrase. defaults to 1.
#' @importFrom stringr str_replace_all
#' @importFrom crayon italic
#' @export

typewrite_italic <-
        function(..., tabs = 0, line_number = 0, log = FALSE) {

            TypewriteMessage_obj <- make_PlainTypewriteMessage(...)
            TypewriteMessage_obj@Formatted <- crayon::italic(TypewriteMessage_obj@Plain)

            TypewriteLines_obj <- new("TypewriteLines",
                                      TypewriteMessage = TypewriteMessage_obj,
                                      `Blank Lines` = line_number,
                                      `Indents` = tabs)


            output <- make_TypewriteOutput(TypewriteLines_obj = TypewriteLines_obj)

            if (log == TRUE) {
                log_TypewriteMessage(TypewriteMessage_obj)
                cat(output, sep = "\n")
            } else {
                cat(output, sep = "\n")
            }

        }
