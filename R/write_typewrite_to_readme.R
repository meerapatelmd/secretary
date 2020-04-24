#' Writes a typewritten message to README
#' @description The typewrite message is added with a timestamp under a #Typewrite Messages section in the README.md of the working directory.
#' @importFrom readr read_lines
#' @importFrom cave present_script_path
#' @export

write_typewrite_to_readme <-
    function(typewrite_message) {

        ##Making sure the 2 prerequisites for a Readi object are present:
        ##1. README in the working directory
                    create_readme()
        ##2. # Typewrite Messages section in the README
                    add_typewrite_readme_section()


        #Reading README
        readme <- readr::read_lines(file = "README.md")

        #Pinpointing starting line of File Details
        starting_line <- grep("# Typewrite Messages", readme)

        #Splitting File Details into 3 sections: top, middle, and bottom.
        top_part <- readme[1:starting_line]

        if (starting_line < length(readme)) {
            bottom_part <- readme[(starting_line+1):length(readme)]
        } else {
            bottom_part <- "\n"
        }

        ##Writing middle part
        middle_part <- c(
            paste0("Timestamp:\t", stampede::stamp_this()),
            paste0("Local R Script:\t", cave::present_script_path()),
            paste0("Typewrite Message:\t", typewrite_message))

        ##New readme
        new_readme <- c(top_part,
                        middle_part,
                        bottom_part)

        readr::write_lines(new_readme,
                           path = "README.md")
    }
