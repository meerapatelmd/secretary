#' Returns a phrase with formatting
#' @param ... words in the phrase
#' @param tabs number of tab spacing desired. defaults to 1.
#' @param line_number number of lines wanted after the phrase. defaults to 1.
#' @export

typewrite <-
        function(...,
                 tabs = 0,
                 line_number = 0,
                 timepunched = TRUE,
                 file = "",
                 append = TRUE,
                 log = FALSE) {

            TypewriteMessage_obj <- make_PlainTypewriteMessage(...)

            TypewriteLines_obj <- new("TypewriteLines",
                                      TypewriteMessage = TypewriteMessage_obj,
                                      `Blank Lines` = line_number,
                                      `Indents` = tabs)


            output <- make_TypewriteOutput(TypewriteLines_obj = TypewriteLines_obj)


            if (timepunched == TRUE) {

                cat(paste0(timepunch(), "\t", output), sep = "\n")

                    if (file != "") {
                            cat(paste0(timepunch(), "\t",crayon::strip_style(output)), sep = "\n", file = file, append = append)
                    }

            } else {

                cat(output, sep = "\n")


                    if (file != "") {
                            cat(paste0(timepunch(), "\t", crayon::strip_style(output)), sep = "\n", file = file, append = append)
                    }


            }

        }
