#' Run TypR files in terminal (version simplifiée)
#' @export
run_typr_file <- function() {
  context <- rstudioapi::getActiveDocumentContext()
  
  if (is.null(context$path) || context$path == "") {
    rstudioapi::showDialog(
      title = "Error",
      message = "Select an opened and saved file"
    )
    return()
  }
  
  env_vars <- Sys.getenv()
  nom_fichier <- basename(context$path)
  repertoire <- dirname(context$path)
  
  # Construire la commande complète
  commande1 <- paste0("/home/fabrice/sh/typr ", nom_fichier, " 2>&1")
  
  # Envoyer la commande au terminal
  #rstudioapi::terminalExecute(commande1, workingDir = repertoire, env = env_vars, show = TRUE)
  rstudioapi::terminalExecute(commande1, workingDir = repertoire, show = TRUE)
}
