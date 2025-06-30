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
  commande1 <- paste0("cat ", nom_fichier)
  
  # Créer un nouveau terminal et exécuter la commande
  terminal_id <- rstudioapi::terminalCreate(
    caption = paste("TypR -", nom_fichier),
    show = TRUE
  )
  
  # Envoyer la commande au terminal
  #rstudioapi::terminalExecute(commande1, workingDir = repertoire, env = env_vars, show = TRUE)
  rstudioapi::terminalExecute(commande1, workingDir = repertoire)
}
