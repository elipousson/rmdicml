#' IMCL Export format for RMarkdown
#'
#' @export
#' @importFrom rmarkdown output_format knitr_options pandoc_options
simple_icml_format = function() {

  args <- c("--self-contained")
  args <- c(args, "--number-sections")

  output_format(
    knitr = knitr_options(opts_chunk = list(dev = 'png')),
    pandoc = pandoc_options(
      to = "icml",
      args = args),
    clean_supporting = FALSE
  )
}
