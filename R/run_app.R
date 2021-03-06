#' Run the Shiny Application
#'
#' @param sqlite_base SQLite base path
#' @param cron_responses CRON responses rda path
#' @param title Shiny application title
#' 
#' @export
#' @importFrom shiny shinyApp
#' @importFrom golem with_golem_options
run_app <- function(sqlite_base, cron_responses, title = "Phoning") {
  with_golem_options(
    app = shinyApp(
      ui = app_ui,
      server = app_server
    ), 
    golem_opts = list(
      sqlite_base = sqlite_base,
      cron_responses = cron_responses,
      title = title
    )
  )
}
