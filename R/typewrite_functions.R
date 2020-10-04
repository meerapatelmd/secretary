#' Returns a phrase with formatting
#' @param ... words in the phrase
#' @param tabs number of tab spacing desired. defaults to 1.
#' @param line_number number of lines wanted after the phrase. defaults to 1.
#' @importFrom crayon red
#' @export

typewrite_error <-
        function(...,
                 tabs = 0,
                 line_number = 0,
                 timepunched = TRUE,
                 file = "",
                 append = TRUE,
                 log = FALSE) {


                typewrite(redTxt("Error:"),
                          ...,
                          tabs = tabs,
                          line_number = line_number,
                          timepunched = timepunched,
                          file = file,
                          append = append)


}

#' Returns a phrase with formatting
#' @param ... words in the phrase
#' @param tabs number of tab spacing desired. defaults to 1.
#' @param line_number number of lines wanted after the phrase. defaults to 1.
#' @importFrom crayon red
#' @export

typewrite_warning <-
        function(...,
                 tabs = 0,
                 line_number = 0,
                 timepunched = TRUE,
                 file = "",
                 append = TRUE,
                 log = FALSE) {


                typewrite(yellowTxt("Warning:"),
                          ...,
                          tabs = tabs,
                          line_number = line_number,
                          timepunched = timepunched,
                          file = file,
                          append = append)


        }


#' Returns a phrase with formatting
#' @param ... words in the phrase
#' @param tabs number of tab spacing desired. defaults to 1.
#' @param line_number number of lines wanted after the phrase. defaults to 1.
#' @importFrom crayon red
#' @export

typewrite_note <-
        function(...,
                 tabs = 0,
                 line_number = 0,
                 timepunched = TRUE,
                 file = "",
                 append = TRUE,
                 log = FALSE) {


                typewrite(greenTxt("Note:"),
                          ...,
                          tabs = tabs,
                          line_number = line_number,
                          timepunched = timepunched,
                          file = file,
                          append = append)


        }
