get_executable <- function() {
	if (.Platform$OS.type == "windows") {
		"typr.exe"
	} else {
		"typr" 
	}
}

#' Run TypR files in terminal
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
  
  commande1 <- paste0("/home/fabrice/sh/typr ", nom_fichier, " 2>&1")
  rstudioapi::terminalExecute(commande1, workingDir = repertoire, show = TRUE)
}

#' Run TypR project in terminal
#' @export
run_typr_project <- function() {
  context <- rstudioapi::getActiveDocumentContext()
  
  env_vars <- Sys.getenv()
  nom_fichier <- basename(context$path)
  repertoire <- dirname(context$path)
  
	exe_path <- system.file("bin", get_executable(), package = "typr.runner")
	result <- system(paste0(exe_path, " run"), intern = TRUE)
	print(paste(result, collapse = "\r"))
}

#' Build TypR project in terminal
#' @export
build_typr_project <- function() {
  context <- rstudioapi::getActiveDocumentContext()
  
  env_vars <- Sys.getenv()
  nom_fichier <- basename(context$path)
  repertoire <- dirname(context$path)
  
  commande1 <- paste0("/home/fabrice/sh/typr build", " 2>&1")
  rstudioapi::terminalExecute(commande1, workingDir = repertoire, show = TRUE)

	exe_path <- system.file("bin", get_executable(), package = "typr.runner")
	result <- system(paste0(exe_path, " build"), intern = TRUE)
	print(paste(result, collapse = "\r"))
}

#' Check TypR project in terminal
#' @export
check_typr_project <- function() {
  context <- rstudioapi::getActiveDocumentContext()
  
  env_vars <- Sys.getenv()
  nom_fichier <- basename(context$path)
  repertoire <- dirname(context$path)
  
  commande1 <- paste0("/home/fabrice/sh/typr check", " 2>&1")
  rstudioapi::terminalExecute(commande1, workingDir = repertoire, show = TRUE)
}

#' Check TypR project in terminal
#' @export
test_typr_project <- function() {
  context <- rstudioapi::getActiveDocumentContext()
  
  env_vars <- Sys.getenv()
  nom_fichier <- basename(context$path)
  repertoire <- dirname(context$path)
  
  commande1 <- paste0("/home/fabrice/sh/typr test", " 2>&1")
  rstudioapi::terminalExecute(commande1, workingDir = repertoire, show = TRUE)
}


