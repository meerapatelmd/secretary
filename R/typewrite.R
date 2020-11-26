#' @title
#' Typewrite
#' @param ... Strings to concatenate into a single message
#' @param tabs Number of tabs to indent the message before it is printed to the console, Default: 0
#' @param line_number Number of lines to skip before and after the message is printed to the console, Default: 0
#' @param timepunched Should the message be prefixed with a bracketed timestamp?, Default: TRUE
#' @param file Argument passed to the cat function if the message should also be saved to a file, Default: ''
#' @param append Argument passed to the cat function if the message should be appended to the file argument, Default: TRUE
#' @seealso
#'  \code{\link[crayon]{strip_style}}
#' @rdname typewrite
#' @export
#' @importFrom crayon strip_style

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
