#' View HumanLiver data in the scClustViz Shiny app
#'
#' A wrapper function to view the \code{HumanLiver} dataset in the
#' \code{scClustViz} Shiny app.
#'
#' @param outPath Default = "./" (the working directory). Specify the directory
#'   used to save/load any analysis files you generate while exploring the
#'   \code{HumanLiver} data.
#'
#' @return The function causes the scClustViz Shiny GUI app to open in a
#'   seperate window.
#'
#' @examples
#'   viewHumanLiver()
#'
#' @seealso \url{https://baderlab.github.io/scClustViz} for information on
#'   \code{scClustViz}.
#'
#' @export

viewHumanLiver <- function(outPath="./") {
  filePath <- system.file("liver/HumanLiver.RData",package="HumanLiver")
  cellMarkers <- list()

  if (require("org.Hs.eg.db",quietly=T)) {
    annotationDB <- org.Hs.eg.db
    scClustViz::runShiny(filePath=filePath,
                         outPath=outPath,
                         cellMarkers=cellMarkers,
                         annotationDB=annotationDB)

  } else {
    scClustViz::runShiny(filePath=filePath,
                         outPath=outPath,
                         cellMarkers=cellMarkers)
  }
}
