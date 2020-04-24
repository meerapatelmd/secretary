#' Returns a phrase with formatting
#' @param ... words in the phrase
#' @param tabs number of tab spacing desired. defaults to 1.
#' @param line_number number of lines wanted after the phrase. defaults to 1.
#' @importFrom stringr str_replace_all
#' @export

typewrite <-
        function(..., tabs = 0, line_number = 1, add_to_readme = TRUE) {
            x <- paste(..., collapse = " ")
            x <- stringr::str_replace_all(x, "([ ]{1})([[:punct:]]{1,}$)", "\\2")


            lines <- paste(rep("\n", line_number), collapse = "")
            indent <- paste(rep("\t", tabs), collapse = "")
            output <- paste0(lines,
                             indent,
                             x,
                             lines)

            if (add_to_readme == TRUE) {
                write_to_readme(typewrite_message = output)
                cat(output, sep = "\n")
            } else {
                cat(output, sep = "\n")
            }

        }
