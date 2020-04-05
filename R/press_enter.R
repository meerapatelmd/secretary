#' Stops the script and asks end-user to press [ENTER] to continue
#'
#' @export

press_enter <-
        function() {
                base::readline("Press [ENTER] to continue or [ESC] to end. ")
        }
