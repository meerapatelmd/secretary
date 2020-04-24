#' Add a Typewrite messages section in README
#' If the README.md in the present working directory does not contain a "# Typewrite Messages" heading, it is added in the end of it.
#' @importFrom readr read_lines
#' @export

add_readme_section <-
    function() {
            readme <- readr::read_lines(file = "README.md")
        if (!("# Typewrite Messages" %in% readme)) {
            cat("\n# Typewrite Messages\n", file = "README.md", append = TRUE, sep = "\n")
        }
    }
