#' Converts a pdf file into a version with the pages rearranged for booklet-style printing
#' @param path_to_pdf path to a pdf file with a page number that is a multiple of 4
#' @importFrom pdftools pdf_length
#' @importFrom pdftools pdf_subset
#' @import dplyr
#' @export


pdf_to_booklet_order <-
        function(path_to_pdf) {

                pdf_page_num <- pdftools::pdf_length(path_to_pdf)

                if ((pdf_page_num %% 4) != 0) {
                        mirCat::typewrite(path_to_pdf, "does not have a page length that is a multiple of 4.")
                        mirCat::stop_before_continue()
                }

                page_number_index <- seq(1, pdf_page_num/2, 2)
                max_length <- pdf_page_num


                iteration_number <- length(page_number_index)-1
                a <- rev(seq(max_length-(2*(iteration_number)), max_length, by = 2))
                b <- page_number_index
                c <- b+1
                d <- a-1

                booklet_order_df <-
                        tibble(a = a,
                               b = b,
                               c = c,
                               d = d)

                for (i in 1:nrow(booklet_order_df)) {
                        if (i == 1) {
                                final_booklet_order <- unlist(booklet_order_df[1,])
                        } else {
                                final_booklet_order <-
                                        c(final_booklet_order,
                                          unlist(booklet_order_df[i,]))
                        }
                }

                output_fn <- pdftools::pdf_subset(path_to_pdf,
                                             pages = final_booklet_order)

                mirCat::typewrite(output_fn, "successfully written.")
        }
