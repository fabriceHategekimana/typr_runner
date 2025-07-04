get_executable <- function() {
	if (.Platform$OS.type == "windows") {
		"typr.exe"
	} else {
		"typr" 
	}
}

#' Create a TypR project
#' @export
new <- function(path) {
  install.packages(c("devtools", "usethis", "roxygen2", "testthat"))
  
  env_vars <- Sys.getenv()
  nom_fichier <- basename(context$path)
  repertoire <- dirname(context$path)
  
	exe_path <- system.file("bin", get_executable(), package = "typr.runner")
	result <- system(paste0(exe_path, " new ", path), intern = TRUE)
	cat(paste(result, collapse = "\n"))
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
  
	exe_path <- system.file("bin", get_executable(), package = "typr.runner")
	result <- system(paste0(exe_path, nom_fichier), intern = TRUE)
	cat(paste(result, collapse = "\n"))
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
	cat(paste(result, collapse = "\n"))
}

#' Build TypR project in terminal
#' @export
build_typr_project <- function() {
  context <- rstudioapi::getActiveDocumentContext()
  
  env_vars <- Sys.getenv()
  nom_fichier <- basename(context$path)
  repertoire <- dirname(context$path)

	exe_path <- system.file("bin", get_executable(), package = "typr.runner")
	result <- system(paste0(exe_path, " build"), intern = TRUE)
	cat(paste(result, collapse = "\n"))
}

#' Check TypR project in terminal
#' @export
check_typr_project <- function() {
  context <- rstudioapi::getActiveDocumentContext()
  
  env_vars <- Sys.getenv()
  nom_fichier <- basename(context$path)
  repertoire <- dirname(context$path)
  
	exe_path <- system.file("bin", get_executable(), package = "typr.runner")
	result <- system(paste0(exe_path, " check"), intern = TRUE)
	cat(paste(result, collapse = "\n"))
}

#' Check TypR project in terminal
#' @export
test_typr_project <- function() {
  context <- rstudioapi::getActiveDocumentContext()
  
  env_vars <- Sys.getenv()
  nom_fichier <- basename(context$path)
  repertoire <- dirname(context$path)
  
	exe_path <- system.file("bin", get_executable(), package = "typr.runner")
	result <- system(paste0(exe_path, " test"), intern = TRUE)
	cat(paste(result, collapse = "\n"))
}


