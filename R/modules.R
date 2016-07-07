
#' UI function of the mapmodule
#' @description Creates a leaflet map. More features to come
#' @param id The is the id that needs to be specified in both the UI and server function of the shiny app
#' @return NA It plots a map
#' @import shiny
#' @export
#' @examples to come
mapModuleUI <- function(id) {
  # Create a namespace function using the provided id
  ns <- NS(id)

  # fluidRow(
 leafletOutput(ns("map"))
  # )

}

#' Server function of the mapmodule
#' @description Creates a leaflet map. More features to come
#' @param NA No parameters yet
#' @return NA It plots a map
#' @importFrom leaflet leaflet
#' @import shiny
#' @export
#' @examples to come
mapModule <- function(input, output, session) {

  myMap <- leaflet() %>%
    addTiles() %>%
    addDrawToolbar(
      layerID = "selectbox",
      polyline = FALSE,
      circle = FALSE,
      marker = FALSE,
      edit = FALSE,
      polygon = TRUE,
      rectangle = TRUE,
      remove = TRUE)

  output$map <- renderLeaflet({myMap})

}
