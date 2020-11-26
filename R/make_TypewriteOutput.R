#' Make the final output to be printed to console
#' @noRd
#' @export

make_TypewriteOutput <-
    function(TypewriteLines_obj) {
        if (is.na(TypewriteLines_obj@TypewriteMessage@Formatted)) {
            lines <- paste(rep("\n", TypewriteLines_obj@`Blank Lines`), collapse = "")
            indent <- paste(rep("\t", TypewriteLines_obj@Indents), collapse = "")
            output <- paste0(lines,
                             indent,
                             TypewriteLines_obj@TypewriteMessage@Plain,
                             lines)

        } else {
            lines <- paste(rep("\n", TypewriteLines_obj@`Blank Lines`), collapse = "")
            indent <- paste(rep("\t", TypewriteLines_obj@Indents), collapse = "")
            output <- paste0(lines,
                             indent,
                             TypewriteLines_obj@TypewriteMessage@Formatted,
                             lines)
        }
        return(output)
    }
