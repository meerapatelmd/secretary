#' Make a PlainTypewriteMessage
#' @description This function fills the Plain slot of the TypewriteMessage object from the input
#' @importFrom rlang list2
#' @export

make_PlainTypewriteMessage <-
    function(...) {
        concatenated_words <-
                rlang::list2(...) %>%
                unlist() %>%
                paste(collapse = " ")
        TypewriteMessage_obj <- new("TypewriteMessage")
        TypewriteMessage_obj@Plain <- concatenated_words
        return(TypewriteMessage_obj)
    }
