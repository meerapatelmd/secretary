#' Concatenate input words into a phrase
#' @importFrom centipede rm_space_before_period
#' @export

concat_words <-
    function(...) {
        x <- paste(..., collapse = " ")
        x <- centipede::rm_space_before_period(x)
        return(x)

    }
