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
  cellMarkers <- list("Hepatocytes"=c("ALB","HAMP","ARG1","PCK1","AFP","BCHE"),
                      "LSECs"=c("CALCRL","CD32B","VWF"),
                      "Cholangiocytes"=c("KRT19","EPCAM","FXDY2","CLDN4","CLDN10",
                                       "SOX9","MMP7","CXCL1","CFTR","TFF2","KRT7","CD24"),
                      "Hepatic Stellate Cells"=c("ACTA2","COL1A1","TAGLN","COL1A2",
                                                 "COL3A1","SPARC","RBP1","DCN","MYL9"),
                      "Macrophages"=c("CD68","MARCO"),
                      "ab T cells"=c("CD2","CD3D","TRAC","IL32","CD3E"),
                      "gd T cells"=c("NKG7","FCGR3A","HOPX","GNLY"),
                      "NK cells"=c("GZMK","KLRF1","CCL3","CMC1"),
                      "Plasma cells"=c("CD27","IGHG1"),
                      "Mature B cells"=c("MS4A1","LTB","CD52","IGHD"),
                      "Erythroid cells"=c("HBB","SLC25A37","CA1","ALAS2"))

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
