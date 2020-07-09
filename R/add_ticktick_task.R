#' Add a TickTick Task from the console
#' @import postfixR
#' @export

add_ticktick_task <-
    function(task,
             description) {

        if (is.null(Sys.getenv("ticktick_email"))) {

                stop('ticktick_email is null')

        }

        postfixR::send_email(to = Sys.getenv("ticktick_email"),
                             subject = task,
                             body = description)

    }
