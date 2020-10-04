#' Typewrite Progress of a Loop
#' @param iteration_n integer of iteration of the loop
#' @param .input dataframe, tibble, list, or vector that is being iterated over.
#' @param timestamped If TRUE, a timestamp of the Sys.time is included in the line surrounded in square brackets
#' @export


typewrite_progress <-
    function(iteration,
             total,
             file = "",
             append = TRUE) {

            percentage_label <- paste0(signif(((iteration/total)*100), digits = 2), "%")
            iteration_label <- paste0(iteration, "/", total)

            typewrite(iteration_label, paste0("(", percentage_label, ")"), timepunched = TRUE, file = file, append = append)

            }

