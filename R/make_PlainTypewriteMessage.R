#' Make a PlainTypewriteMessage
#' @description This function fills the Plain slot of the TypewriteMessage object from the input
#' @export

make_PlainTypewriteMessage <-
    function(...) {
        TypewriteMessage_obj <- new("TypewriteMessage")
        TypewriteMessage_obj@Plain <- concat_words(...)
        return(TypewriteMessage_obj)
    }
