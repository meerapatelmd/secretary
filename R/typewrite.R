#' Returns a phrase with formatting
#' @param ... words in the phrase
#' @param tabs number of tab spacing desired. defaults to 1.
#' @param c_return number of lines wanted after the phrase. defaults to 1.
#' @importFrom stringr str_replace_all
#' @export

typewrite <-
        function(..., tabs = 0, c_return_lines = 1) {

                c_return <-
                        function(line_number) {
                                        cat(paste(rep("\n", line_number), sep = "", collapse = ""))
                        }

                c_return(c_return_lines)

                x <- paste(..., collapse = " ")
                x <- stringr::str_replace_all(x, "([ ]{1})([[:punct:]]{1,}$)", "\\2")
                if (tabs != 0) {
                        cat(paste(paste(rep("\t", times = tabs), sep = "", collapse = " "), x, collapse = " "))
                } else {
                        cat(x)
                }

                c_return(c_return_lines)
        }
