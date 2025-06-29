#' Run TypR files
#' @export
run_typr_file <- function() {
  context <- rstudioapi::getActiveDocumentContext()
  
  if (is.null(context$path) || context$path == "") {
    rstudioapi::showDialog(
      title = "Error",
      message = "No file opened or saved"
    )
    return()
  }
  
  nom_fichier <- basename(context$path)
  chemin_complet <- context$path
  
  commande <- paste0("typr ", nom_fichier)
  rstudioapi::sendToConsole(commande, execute = TRUE)
  
}
