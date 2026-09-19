source("renv/activate.R")

# ==============================================================================
# CmdStanR / Windows RTools45 Dynamic Linker Fix
# ==============================================================================
if (.Platform$OS.type == "windows") {
  # 1. Guarantee RTools45 compiler binaries are in the session PATH
  rtools_ucrt <- "C:\\rtools45\\ucrt64\\bin"
  rtools_usr  <- "C:\\rtools45\\usr\\bin"
  
  current_path <- Sys.getenv("PATH")
  if (!grepl(rtools_ucrt, current_path, fixed = TRUE)) {
    Sys.setenv(PATH = paste(rtools_ucrt, rtools_usr, current_path, sep = ";"))
  }
  
  # 2. Auto-copy CmdStan's tbb.dll into tempdir() on session startup
  setHook("rstudio.sessionInit", function(...) {
    try({
      if (requireNamespace("cmdstanr", quietly = TRUE)) {
        cs_path <- cmdstanr::cmdstan_path()
        tbb_dll <- file.path(cs_path, "stan", "lib", "stan_math", "lib", "tbb", "tbb.dll")
        if (file.exists(tbb_dll)) {
          file.copy(tbb_dll, tempdir(), overwrite = TRUE)
        }
      }
    }, silent = TRUE)
  })
}

# Add Stan repository alongside CRAN in your current R session
options(repos = c(
  stan = "https://stan-dev.r-universe.dev",
  CRAN = "https://cloud.r-project.org"
))
