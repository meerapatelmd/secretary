#' Typewrite Progress of a Loop
#' @param iteration_n integer of iteration of the loop
#' @param .input dataframe, tibble, list, or vector that is being iterated over.
#' @param timestamped If TRUE, a timestamp of the Sys.time is included in the line surrounded in square brackets
#' @export


typewrite_progress <-
    function(iteration_n,
             .input,
             timestamped = TRUE) {


            if (is.data.frame(.input)) {
                    total_iterations <- nrow(.input)
            } else {

                    total_iterations <- length(.input)
            }

            if (timestamped) {

                    typewrite(paste0("[", Sys.time(), "]"), "\tLoading ", iteration_n, " of ", total_iterations)

            } else {

                    typewrite("Loading ", iteration_n, " of ", total_iterations)

            }

    }
