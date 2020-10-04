#' @title
#' Typewrite an Error Message
#'
#' @inheritParams typewrite
#' @rdname typewrite_error
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

#' @title
#' Typewrite a Warning Message
#'
#' @inheritParams typewrite
#' @rdname typewrite_warning
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


#' @title
#' Typewrite a Note
#'
#' @inheritParams typewrite
#' @rdname typewrite_note
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
