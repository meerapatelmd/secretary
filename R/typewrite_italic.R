#' Returns a message in console in italic
#' @description This function is like the typewrite() function, except there is an "ERROR:" prefix attached to the console in red.
#' @param ... words in the phrase
#' @param tabs number of tab spacing desired. defaults to 1.
#' @param c_return number of lines wanted after the phrase. defaults to 1.
#' @importFrom stringr str_replace_all
#' @importFrom crayon italic
#' @export

typewrite_italic <-
        function(..., tabs = 0, line_number = 1, add_to_readme = TRUE) {
                x <- paste(..., collapse = " ")
                x <- stringr::str_replace_all(x, "([ ]{1})([[:punct:]]{1,}$)", "\\2")

                x2 <- crayon::italic(x)

                lines <- paste(rep("\n", line_number), collapse = "")
                indent <- paste(rep("\t", tabs), collapse = "")
                output <- paste0(lines,
                                 indent,
                                 x2,
                                 lines)

                if (add_to_readme == TRUE) {
                    write_to_readme(typewrite_message = x)
                    cat(output, sep = "\n")
                } else {
                    cat(output, sep = "\n")
                }

        }
