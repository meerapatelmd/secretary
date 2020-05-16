#' Make a PlainTypewriteMessage
#' @description This function fills the Plain slot of the TypewriteMessage object from the input
#' @importFrom centipede rm_space_before_period
#' @export

make_PlainTypewriteMessage <-
    function(...) {
        TypewriteMessage_obj <- new("TypewriteMessage")
        TypewriteMessage_obj@Plain <- concat_words(...)
        TypewriteMessage_obj@Plain <- centipede::rm_space_before_period(TypewriteMessage_obj@Plain)
        return(TypewriteMessage_obj)
    }
